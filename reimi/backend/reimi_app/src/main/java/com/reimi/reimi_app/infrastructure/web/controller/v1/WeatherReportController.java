package com.reimi.reimi_app.infrastructure.web.controller.v1;

import java.time.LocalDate;
import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.reimi.reimi_app.application.command.report.PostWeatherReportCommand;
import com.reimi.reimi_app.application.command.report.WeatherMediaCommand;
import com.reimi.reimi_app.application.command.report.WeatherObservationCommand;
import com.reimi.reimi_app.application.usecase.WeatherReportUseCase;
import com.reimi.reimi_app.infrastructure.web.dto.request.PostWeatherReportRequest;
import com.reimi.reimi_app.infrastructure.web.dto.response.GetWeatherReportListResponse;
import com.reimi.reimi_app.infrastructure.web.openapi.report.GetWeatherReportApi;
import com.reimi.reimi_app.infrastructure.web.openapi.report.PostWeatherReportApi;

import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;

@RestController
@Tag(name = "09. WeatherReport", description = "ウェザーリポート関連のAPI")
public class WeatherReportController extends ApiV1Controller {

    private final WeatherReportUseCase weatherReportUseCase;

    public WeatherReportController(
        WeatherReportUseCase weatherReportUseCase
    ) {
        this.weatherReportUseCase = weatherReportUseCase;
    }

    @PostMapping(
        path = "/weather-reports",
        consumes = MediaType.MULTIPART_FORM_DATA_VALUE, produces = MediaType.APPLICATION_JSON_VALUE
    )
    @PostWeatherReportApi
    public ResponseEntity<Void> post(
        @ModelAttribute @Valid PostWeatherReportRequest request
    ) {
        // media変換
        WeatherMediaCommand mediaCommand = new WeatherMediaCommand(
            request.mediaType(),
            request.weatherPhoto()
        );

        // observation変換（null許容）
        WeatherObservationCommand observationCommand =
            request.hasObservation() ? new WeatherObservationCommand(
                    request.temperature(),
                    request.humidity(),
                    request.pressure(),
                    request.windSpeed(),
                    request.windDirection()
                ) : null;

        weatherReportUseCase.postWeatherReport(
            new PostWeatherReportCommand(
                request.comment(),
                request.weatherType(),
                request.feelingType(),
                request.forecastType(),
                request.latitude(),
                request.longitude(),
                mediaCommand,
                observationCommand
            )
        );

        return ResponseEntity.status(HttpStatus.CREATED).build();
    }

    @GetMapping(path = "/weather-reports")
    @GetWeatherReportApi
    public ResponseEntity<List<GetWeatherReportListResponse>> getTodayWeatherReports() {

        LocalDate today = LocalDate.now();

        List<GetWeatherReportListResponse> response = weatherReportUseCase.getTodayWeatherReportList(today)
                .stream()
                .map(report -> new GetWeatherReportListResponse(
                    report.getId().value(),
                    report.getUserId().value(),
                    report.getComment(),
                    report.getMedia().getMediaType(),
                    report.getMedia().getSignedWeatherPhotoUrl(),
                    report.getCreateAt()
                ))
                .toList();

        return ResponseEntity.ok(response);
    }
}
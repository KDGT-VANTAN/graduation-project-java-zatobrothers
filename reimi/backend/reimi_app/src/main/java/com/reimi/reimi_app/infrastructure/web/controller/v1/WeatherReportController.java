package com.reimi.reimi_app.infrastructure.web.controller.v1;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.reimi.reimi_app.application.command.report.PostWeatherReportCommand;
import com.reimi.reimi_app.application.command.report.WeatherMediaCommand;
import com.reimi.reimi_app.application.command.report.WeatherObservationCommand;
import com.reimi.reimi_app.application.usecase.WeatherReportUseCase;
import com.reimi.reimi_app.infrastructure.web.dto.request.report.PostWeatherReportRequest;
import com.reimi.reimi_app.infrastructure.web.openapi.report.PostWeatherReportApi;

import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;

@RestController
@Tag(name = "WeatherReport", description = "ウェザーリポート関連のAPI")
public class WeatherReportController extends ApiV1Controller {

    private final WeatherReportUseCase weatherReportUseCase;

    public WeatherReportController(
        WeatherReportUseCase weatherReportUseCase
    ) {
        this.weatherReportUseCase = weatherReportUseCase;
    }

    @PostMapping("/weather-reports")
    @PostWeatherReportApi
    public ResponseEntity<Void> post(
        @RequestBody @Valid PostWeatherReportRequest request
    ) {
        // media変換
        List<WeatherMediaCommand> mediaCommands =
                request.mediaList().stream()
                        .map(media -> new WeatherMediaCommand(
                                media.mediaType(),
                                media.url()
                        ))
                        .toList();

        // observation変換（null許容）
        WeatherObservationCommand observationCommand = null;

        if (request.observation() != null) {
            observationCommand = new WeatherObservationCommand(
                    request.observation().temperature(),
                    request.observation().humidity(),
                    request.observation().pressure(),
                    request.observation().windSpeed(),
                    request.observation().windDirection()
            );
        }

        weatherReportUseCase.postWeatherReport(
            new PostWeatherReportCommand(
                request.comment(),
                request.weatherType(),
                request.feelingType(),
                request.forecastType(),
                request.latitude(),
                request.longitude(),
                mediaCommands,
                observationCommand
            )
        );

        return ResponseEntity.status(HttpStatus.CREATED).build();
    }
}
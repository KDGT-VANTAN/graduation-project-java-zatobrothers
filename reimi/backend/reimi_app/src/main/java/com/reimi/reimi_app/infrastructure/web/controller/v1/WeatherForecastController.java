package com.reimi.reimi_app.infrastructure.web.controller.v1;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.reimi.reimi_app.application.usecase.WeatherForecastUseCase;
import com.reimi.reimi_app.infrastructure.web.dto.request.WeatherForecastRequest;
import com.reimi.reimi_app.infrastructure.web.dto.response.GetWeatherForecastResponse;
import com.reimi.reimi_app.infrastructure.web.openapi.weatherforecast.GetWeatherForecastApi;

import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;

@RestController
@Tag(name = "10. WeatherForecast", description = "天気予報関連のAPI")
public class WeatherForecastController extends ApiV1Controller {

    private final WeatherForecastUseCase weatherForecastUseCase;

    public WeatherForecastController(
        WeatherForecastUseCase weatherForecastUseCase
    ) {
        this.weatherForecastUseCase = weatherForecastUseCase;
    }

    @GetMapping(path = "/weather-forecasts")
    @GetWeatherForecastApi
    public ResponseEntity<GetWeatherForecastResponse> getWeatherForecast(
        @Valid WeatherForecastRequest request
    ) {
        var result = weatherForecastUseCase
            .getWeatherForecastDetail(
                request.latitude(),
                request.longitude()
            );

        GetWeatherForecastResponse response =
            new GetWeatherForecastResponse(
                result.latitude(),
                result.longitude(),
                result.srfs(),
                result.mrfs()
            );

        return ResponseEntity.ok(response);
    }
}

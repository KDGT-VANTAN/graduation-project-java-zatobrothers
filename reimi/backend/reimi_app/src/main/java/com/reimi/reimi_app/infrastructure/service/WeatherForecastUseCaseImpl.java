package com.reimi.reimi_app.infrastructure.service;

import java.math.BigDecimal;

import org.springframework.stereotype.Service;

import com.reimi.reimi_app.application.usecase.WeatherForecastUseCase;
import com.reimi.reimi_app.domain.external.weather.WeatherForecast;
import com.reimi.reimi_app.domain.external.weather.WeatherForecastPort;

@Service
public class WeatherForecastUseCaseImpl implements WeatherForecastUseCase {

    private final WeatherForecastPort weatherForecastPort;

    public WeatherForecastUseCaseImpl(
        WeatherForecastPort weatherForecastPort
    ) {
        this.weatherForecastPort = weatherForecastPort;
    }

    @Override
    public WeatherForecast getWeatherForecastDetail(BigDecimal latitude, BigDecimal longitude) {
        return weatherForecastPort.fetch(latitude, longitude);
    }

}

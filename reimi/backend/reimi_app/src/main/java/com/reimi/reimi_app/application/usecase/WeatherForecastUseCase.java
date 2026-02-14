package com.reimi.reimi_app.application.usecase;

import java.math.BigDecimal;

import com.reimi.reimi_app.domain.external.weather.WeatherForecast;

public interface WeatherForecastUseCase {
    WeatherForecast getWeatherForecastDetail(BigDecimal latitude, BigDecimal longitude);
}

package com.reimi.reimi_app.domain.external.weather;

public record TodayWeather(
    float temperature,
    WeatherCode weatherCode,
    String WeatherIconUrl
) {}
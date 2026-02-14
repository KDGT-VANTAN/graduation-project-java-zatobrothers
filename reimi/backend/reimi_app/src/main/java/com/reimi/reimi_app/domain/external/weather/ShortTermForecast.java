package com.reimi.reimi_app.domain.external.weather;

public record ShortTermForecast(
    String date,
    float temp,
    int wx
) {}
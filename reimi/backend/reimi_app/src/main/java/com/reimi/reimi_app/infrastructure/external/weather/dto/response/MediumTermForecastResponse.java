package com.reimi.reimi_app.infrastructure.external.weather.dto.response;

public record MediumTermForecastResponse(
    String date,
    float maxtemp,
    float mintemp,
    int pop,
    int wx
) {}
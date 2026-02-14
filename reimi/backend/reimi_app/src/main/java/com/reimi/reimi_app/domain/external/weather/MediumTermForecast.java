package com.reimi.reimi_app.domain.external.weather;

public record MediumTermForecast(
    String date,
    float maxtemp,
    float mintemp,
    int pop,
    int wx
) {}
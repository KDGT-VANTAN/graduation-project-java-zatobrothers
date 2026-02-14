package com.reimi.reimi_app.infrastructure.external.weather.dto.response;

public record ShortTermForecastResponse(
    float arpress,
    String date,
    float prec,
    int rhum,
    float temp,
    int wnddir,
    float wndspd,
    int wx
) {}
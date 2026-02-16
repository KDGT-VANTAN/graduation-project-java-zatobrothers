package com.reimi.reimi_app.domain.external.ai;

import com.reimi.reimi_app.domain.external.weather.TodayWeather;

public record AiSuggestion(
    TodayWeather todayWeather,
    String text
) {}
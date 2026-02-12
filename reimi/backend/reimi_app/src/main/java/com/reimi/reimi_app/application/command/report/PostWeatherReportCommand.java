package com.reimi.reimi_app.application.command.report;

import java.math.BigDecimal;
import java.util.List;

import com.reimi.reimi_app.domain.model.report.value.FeelingType;
import com.reimi.reimi_app.domain.model.report.value.ForecastType;
import com.reimi.reimi_app.domain.model.report.value.WeatherType;

public record PostWeatherReportCommand(
    String comment,
    WeatherType weather,
    FeelingType feeling,
    ForecastType forecast,
    BigDecimal latitude,
    BigDecimal longitude,
    List<WeatherMediaCommand> mediaList,
    WeatherObservationCommand observation
) {}
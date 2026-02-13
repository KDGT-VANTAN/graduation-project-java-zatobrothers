package com.reimi.reimi_app.application.command.report;

import java.math.BigDecimal;

import com.reimi.reimi_app.domain.model.report.value.WindDirection;

public record WeatherObservationCommand(
    BigDecimal temperature,
    BigDecimal humidity,
    BigDecimal pressure,
    BigDecimal windSpeed,
    WindDirection windDirection
) {}
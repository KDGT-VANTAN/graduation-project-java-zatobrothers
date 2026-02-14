package com.reimi.reimi_app.domain.external.weather;

import java.math.BigDecimal;
import java.util.List;

public record WeatherForecast(
    BigDecimal latitude,
    BigDecimal longitude,
    List<ShortTermForecast> srfs,
    List<MediumTermForecast> mrfs
) {}
package com.reimi.reimi_app.domain.external.weather;

import java.math.BigDecimal;

public interface WeatherForecastPort {
    WeatherForecast fetch(BigDecimal latitude, BigDecimal longitude);
}

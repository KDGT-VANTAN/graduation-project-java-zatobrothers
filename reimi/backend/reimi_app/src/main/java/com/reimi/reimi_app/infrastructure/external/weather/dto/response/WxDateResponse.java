package com.reimi.reimi_app.infrastructure.external.weather.dto.response;

import java.math.BigDecimal;
import java.util.List;

public record WxDateResponse(
    BigDecimal lat,
    BigDecimal lon,
    List<ShortTermForecastResponse> srf,
    List<MediumTermForecastResponse> mrf
) {}
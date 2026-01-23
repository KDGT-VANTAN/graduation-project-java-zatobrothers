package com.reimi.reimi_app.infrastructure.web.dto.response;

import com.reimi.reimi_app.domain.model.weatherpersonality.WeatherPersonalityCode;

public record DiagnoseResultWeatherPersonalityResponse(
    WeatherPersonalityCode typeCode,
    String typeName,
    String typeDescription,
    String typeImageUrl
) {}
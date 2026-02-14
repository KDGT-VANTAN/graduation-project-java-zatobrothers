package com.reimi.reimi_app.infrastructure.external.weather.dto.response;

import java.util.List;

public record GetWeatherNewsApiResponse(
    String requestId,
    List<WxDateResponse> wxdata
) {}

package com.reimi.reimi_app.infrastructure.web.dto.response;

import java.util.Map;

public record ApiErrorResponse (
    String code,
    String message,
    Map<String, String> details
) {}

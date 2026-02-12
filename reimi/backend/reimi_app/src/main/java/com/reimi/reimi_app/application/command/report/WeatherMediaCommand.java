package com.reimi.reimi_app.application.command.report;

import com.reimi.reimi_app.domain.model.report.value.MediaType;

public record WeatherMediaCommand(
    MediaType mediaType,
    String url
) {}
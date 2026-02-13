package com.reimi.reimi_app.application.command.report;

import org.springframework.web.multipart.MultipartFile;

import com.reimi.reimi_app.domain.model.report.value.MediaType;

public record WeatherMediaCommand(
    MediaType mediaType,
    MultipartFile weatherPhoto
) {}
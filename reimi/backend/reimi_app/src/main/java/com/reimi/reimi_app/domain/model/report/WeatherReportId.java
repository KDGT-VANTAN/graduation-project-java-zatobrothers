package com.reimi.reimi_app.domain.model.report;

import java.util.UUID;

import com.reimi.reimi_app.domain.shared.identity.UuidGenerator;

public record WeatherReportId(UUID value) {
    public static WeatherReportId generate() {
        return new WeatherReportId(UuidGenerator.generate());
    }
}
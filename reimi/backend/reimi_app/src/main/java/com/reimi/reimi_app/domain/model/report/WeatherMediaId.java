package com.reimi.reimi_app.domain.model.report;

import java.util.UUID;

import com.reimi.reimi_app.domain.shared.identity.UuidGenerator;

public record WeatherMediaId(UUID value) {
    public static WeatherMediaId generate() {
        return new WeatherMediaId(UuidGenerator.generate());
    }
}
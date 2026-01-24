package com.reimi.reimi_app.domain.model.weatherpersonality;

import java.util.UUID;

import com.reimi.reimi_app.domain.shared.identity.UuidGenerator;

public record UserWeatherPersonalityTypeId(UUID value) {
    public static UserWeatherPersonalityTypeId generate() {
        return new UserWeatherPersonalityTypeId(UuidGenerator.generate());
    }
}
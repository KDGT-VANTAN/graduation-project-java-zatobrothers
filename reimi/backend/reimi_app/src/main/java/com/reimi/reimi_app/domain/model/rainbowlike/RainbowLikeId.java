package com.reimi.reimi_app.domain.model.rainbowlike;

import java.util.UUID;

import com.reimi.reimi_app.domain.shared.identity.UuidGenerator;

public record RainbowLikeId(UUID value) {
    public static RainbowLikeId generate() {
        return new RainbowLikeId(UuidGenerator.generate());
    }
}
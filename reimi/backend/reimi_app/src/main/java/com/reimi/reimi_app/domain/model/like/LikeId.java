package com.reimi.reimi_app.domain.model.like;

import java.util.UUID;

import com.reimi.reimi_app.domain.shared.identity.UuidGenerator;

public record LikeId(UUID value) {
    public static LikeId generate() {
        return new LikeId(UuidGenerator.generate());
    }
}
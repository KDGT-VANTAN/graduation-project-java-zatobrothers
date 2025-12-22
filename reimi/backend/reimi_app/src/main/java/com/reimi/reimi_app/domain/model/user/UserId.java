package com.reimi.reimi_app.domain.model.user;

import java.util.UUID;

import com.reimi.reimi_app.domain.shared.identity.UuidGenerator;

public record UserId(UUID value) {
    public static UserId generate() {
        return new UserId(UuidGenerator.generate());
    }
}

package com.reimi.reimi_app.domain.model.profile;

import java.util.UUID;

import com.reimi.reimi_app.domain.shared.identity.UuidGenerator;

public record ProfileId(UUID value) {
    public static ProfileId generate() {
        return new ProfileId(UuidGenerator.generate());
    }
}

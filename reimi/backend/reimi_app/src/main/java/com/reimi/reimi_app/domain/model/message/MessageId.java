package com.reimi.reimi_app.domain.model.message;

import java.util.UUID;

import com.reimi.reimi_app.domain.shared.identity.UuidGenerator;

public record MessageId(UUID value) {
    public static MessageId generate() {
        return new MessageId(UuidGenerator.generate());
    }
}

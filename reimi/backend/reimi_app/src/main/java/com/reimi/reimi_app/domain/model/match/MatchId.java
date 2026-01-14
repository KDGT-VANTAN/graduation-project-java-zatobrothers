package com.reimi.reimi_app.domain.model.match;

import java.util.UUID;

import com.reimi.reimi_app.domain.shared.identity.UuidGenerator;

public record MatchId(UUID value) {
    public static MatchId generate() {
        return new MatchId(UuidGenerator.generate());
    }
}

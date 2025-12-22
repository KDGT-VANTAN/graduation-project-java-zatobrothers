package com.reimi.reimi_app.domain.shared.identity;

import java.util.UUID;

public class UuidGenerator {

    private UuidGenerator() {}

    public static UUID generate() {
        return UUID.randomUUID();
    }
}

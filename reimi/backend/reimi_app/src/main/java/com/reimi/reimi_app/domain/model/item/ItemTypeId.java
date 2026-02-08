package com.reimi.reimi_app.domain.model.item;

import java.util.Arrays;

public enum ItemTypeId {
    RAINBOW_LIKE(1);

    private final int value;

    ItemTypeId(int value) {
        this.value = value;
    }

    public int value() {
        return value;
    }

    public static ItemTypeId fromValue(int value) {
        return Arrays.stream(values())
            .filter(type -> type.value() == value)
            .findFirst()
            .orElseThrow(() ->
                new IllegalArgumentException("不正なアイテムIDです")
            );
    }

}

package com.reimi.reimi_app.domain.model.item;

public enum ItemTypeId {
    RAINBOW_LIKE(1);

    private final int value;

    ItemTypeId(int value) {
        this.value = value;
    }

    public int value() {
        return value;
    }
}

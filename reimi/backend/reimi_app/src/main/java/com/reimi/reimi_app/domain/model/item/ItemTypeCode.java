package com.reimi.reimi_app.domain.model.item;

public enum ItemTypeCode {
    RAINBOW_LIKE("rainbow_like");

    private final String code;

    ItemTypeCode(String code) {
        this.code = code;
    }

    public String getCode() {
        return code;
    }

    public static ItemTypeCode from(String code) {
        try {
            return ItemTypeCode.valueOf(code);
        } catch (IllegalArgumentException | NullPointerException e) {
            throw new IllegalArgumentException("存在しないアイテムコードです");
        }
    }

    public static ItemTypeCode fromItemTypeId(ItemTypeId id) {
        return switch (id) {
            case RAINBOW_LIKE -> RAINBOW_LIKE;
        };
    }

}
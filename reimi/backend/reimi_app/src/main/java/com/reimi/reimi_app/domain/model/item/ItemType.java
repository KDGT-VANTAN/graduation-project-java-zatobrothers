package com.reimi.reimi_app.domain.model.item;

public class ItemType {

    private final ItemTypeId id;
    private final ItemTypeCode code;
    private final String name;
    private final String description;

    private ItemType (
        ItemTypeId id,
        ItemTypeCode code,
        String name,
        String description
    ) {
        this.id = id;
        this.code = code;
        this.name = name;
        this.description = description;
    }

    // アイテム
    // レインボーいいね
    public static final ItemType RAINBOW_LIKE =
        new ItemType(
            ItemTypeId.RAINBOW_LIKE,
            ItemTypeCode.RAINBOW_LIKE,
            "レインボーいいね",
            "特別ないいね"
        );

    public static ItemType[] values() {
        return new ItemType[] {
            RAINBOW_LIKE,
        };
    }

    public static ItemType from(ItemTypeCode code) {
        for (ItemType type : values()) {
            if (type.code.equals(code)) {
                return type;
            }
        }
        throw new IllegalArgumentException("存在しないアイテムコードです");
    }

    public ItemTypeId getId() { return id; }
    public ItemTypeCode getCode() { return code; }
    public String getName() { return name; }
    public String getDescription() { return description; }

}

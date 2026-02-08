package com.reimi.reimi_app.domain.model.item;

public class UserItem {

    private final UserItemId id;
    private int quantity;

    private UserItem(
        UserItemId id,
        int quantity
    ) {
        if (quantity <= 0) {
            throw new IllegalArgumentException("アイテムの数量は1以上である必要があります");
        }
        this.id = id;
        this.quantity = quantity;
    }

    public static UserItem reconstruct(
        UserItemId id,
        int count
    ) {
        return new UserItem(
            id,
            count
        );
    }

    public UserItemId getId() { return id; }
    public int getQuantity() { return quantity; }
}

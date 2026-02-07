package com.reimi.reimi_app.domain.model.item;

import com.reimi.reimi_app.domain.model.user.UserId;

public class UserItem {

    private final UserId userId;
    private final ItemTypeId itemTypeId;
    private int quantity;

    private UserItem(
        UserId userId,
        ItemTypeId itemTypeId,
        int quantity
    ) {
        this.userId = userId;
        this.itemTypeId = itemTypeId;
        this.quantity = quantity;
    }

    public UserId getUserId() { return userId; }
    public ItemTypeId getItemTypeId() { return itemTypeId; }
    public int getQuantity() { return quantity; }
}

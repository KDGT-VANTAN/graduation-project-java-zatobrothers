package com.reimi.reimi_app.domain.model.item;

import com.reimi.reimi_app.domain.model.user.UserId;
import java.util.Objects;

public record UserItemId(
    UserId userId,
    ItemTypeId itemTypeId
) {
    public UserItemId {
        Objects.requireNonNull(userId, "ユーザーIDは必須です");
        Objects.requireNonNull(itemTypeId, "アイテムIDは必須です");
    }
}
package com.reimi.reimi_app.infrastructure.persistence.mapper;

import com.reimi.reimi_app.domain.model.item.ItemTypeId;
import com.reimi.reimi_app.domain.model.item.UserItem;
import com.reimi.reimi_app.domain.model.item.UserItemId;
import com.reimi.reimi_app.domain.model.user.UserId;
import com.reimi.reimi_app.infrastructure.persistence.entity.UserItemEntity;

public class UserItemMapper {

    public static UserItem toDomain(UserItemEntity entity) {
        return UserItem.reconstruct(
            new UserItemId(
                new UserId(entity.getUserId()),
                ItemTypeId.fromValue(entity.getItemTypeId())
            ),
            entity.getQuantity()
        );
    }

    public static UserItemEntity toEntity(UserItem userItem) {
        UserItemEntity entity = new UserItemEntity();
        entity.setUserId(userItem.getId().userId().value());
        entity.setItemTypeId(userItem.getId().itemTypeId().value());
        entity.setQuantity(userItem.getQuantity());

        return entity;
    }

}

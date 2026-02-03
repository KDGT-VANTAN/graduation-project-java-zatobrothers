package com.reimi.reimi_app.infrastructure.persistence.mapper;

import com.reimi.reimi_app.domain.model.item.ItemType;
import com.reimi.reimi_app.domain.model.item.ItemTypeCode;
import com.reimi.reimi_app.infrastructure.persistence.entity.ItemTypeEntity;

public class ItemTypeMapper {

    public static ItemType toDomain(ItemTypeEntity entity) {
        ItemTypeCode code = ItemTypeCode.from(entity.getCode());
        return ItemType.from(code);
    }

    public static ItemTypeEntity toEntity(ItemType type) {
        return new ItemTypeEntity(
            type.getId().value(),
            type.getCode().name(),
            type.getName(),
            type.getDescription()
        );
    }
}

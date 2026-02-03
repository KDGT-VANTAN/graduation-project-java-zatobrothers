package com.reimi.reimi_app.domain.repository;

import java.util.Optional;

import com.reimi.reimi_app.domain.model.item.ItemType;
import com.reimi.reimi_app.domain.model.item.ItemTypeCode;

public interface ItemTypeRepository {
    Optional<ItemType> findByCode(ItemTypeCode code);

    void save(ItemType itemType);
}

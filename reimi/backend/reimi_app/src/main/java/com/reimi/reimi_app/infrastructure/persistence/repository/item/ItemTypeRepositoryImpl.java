package com.reimi.reimi_app.infrastructure.persistence.repository.item;

import java.util.Optional;

import org.springframework.stereotype.Repository;

import com.reimi.reimi_app.domain.model.item.ItemType;
import com.reimi.reimi_app.domain.model.item.ItemTypeCode;
import com.reimi.reimi_app.domain.repository.ItemTypeRepository;
import com.reimi.reimi_app.infrastructure.persistence.mapper.ItemTypeMapper;

@Repository
public class ItemTypeRepositoryImpl implements ItemTypeRepository {

    private final JpaItemTypeRepository jpaItemTypeRepository;

    public ItemTypeRepositoryImpl(
        JpaItemTypeRepository jpaItemTypeRepository
    ) {
        this.jpaItemTypeRepository = jpaItemTypeRepository;
    }

    @Override
    public Optional<ItemType> findByCode(ItemTypeCode itemTypeCode) {
        return jpaItemTypeRepository
            .findByCode(itemTypeCode.name())
            .map(ItemTypeMapper::toDomain);
    }

    @Override
    public void save(ItemType itemType) {
        jpaItemTypeRepository.save(ItemTypeMapper.toEntity(itemType));
    }
}
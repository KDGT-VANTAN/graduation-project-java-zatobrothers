package com.reimi.reimi_app.infrastructure.persistence.repository.item;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.reimi.reimi_app.infrastructure.persistence.entity.ItemTypeEntity;

public interface JpaItemTypeRepository extends JpaRepository<ItemTypeEntity, Integer> {
    Optional<ItemTypeEntity> findByCode(String code);
}
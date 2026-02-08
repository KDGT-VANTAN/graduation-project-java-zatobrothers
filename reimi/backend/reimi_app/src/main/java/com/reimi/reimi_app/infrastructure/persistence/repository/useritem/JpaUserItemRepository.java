package com.reimi.reimi_app.infrastructure.persistence.repository.useritem;

import java.util.List;
import java.util.UUID;

import org.springframework.data.jpa.repository.JpaRepository;

import com.reimi.reimi_app.infrastructure.persistence.entity.UserItemEntity;

public interface JpaUserItemRepository extends JpaRepository<UserItemEntity, Long>  {
    List<UserItemEntity> findByUserId(UUID userId);
}

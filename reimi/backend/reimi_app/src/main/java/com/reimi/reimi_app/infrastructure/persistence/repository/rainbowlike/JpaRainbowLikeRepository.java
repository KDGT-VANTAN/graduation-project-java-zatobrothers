package com.reimi.reimi_app.infrastructure.persistence.repository.rainbowlike;

import java.util.UUID;

import org.springframework.data.jpa.repository.JpaRepository;

import com.reimi.reimi_app.infrastructure.persistence.entity.RainbowLikeEntity;

public interface JpaRainbowLikeRepository extends JpaRepository<RainbowLikeEntity, UUID> {
    boolean existsByFromUserIdAndToUserId(UUID fromUserId, UUID toUserId);
}
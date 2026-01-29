package com.reimi.reimi_app.infrastructure.persistence.repository.rainbowlike;

import java.util.List;
import java.util.UUID;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.reimi.reimi_app.infrastructure.persistence.entity.RainbowLikeEntity;

public interface JpaRainbowLikeRepository extends JpaRepository<RainbowLikeEntity, UUID> {
    boolean existsByFromUserIdAndToUserId(UUID fromUserId, UUID toUserId);

    @Query("""
        select r
        from RainbowLikeEntity r
        where r.fromUserId = :fromUserId
    """)
    List<RainbowLikeEntity> findRainbowLikesByFromUserId(UUID fromUserId);

    @Query("""
        select r
        from RainbowLikeEntity r
        where r.toUserId = :toUserId
    """)
    List<RainbowLikeEntity> findRainbowLikesByToUserId(UUID toUserId);
}
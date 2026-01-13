package com.reimi.reimi_app.infrastructure.persistence.repository.like;

import java.util.List;
import java.util.UUID;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.reimi.reimi_app.infrastructure.persistence.entity.LikeEntity;

public interface JpaLikeRepository extends JpaRepository<LikeEntity, UUID> {
    boolean existsByFromUserIdAndToUserId(UUID fromUserId, UUID toUserId);

    @Query("""
        select l.toUserId
        from LikeEntity l
        where l.fromUserId = :fromUserId
    """)
    List<UUID> findToUserIdsByFromUserId(UUID fromUserId);

    @Query("""
        select l.fromUserId
        from LikeEntity l
        where l.toUserId = :toUserId
    """)
    List<UUID> findFromUserIdsByToUserId(UUID toUserId);
}
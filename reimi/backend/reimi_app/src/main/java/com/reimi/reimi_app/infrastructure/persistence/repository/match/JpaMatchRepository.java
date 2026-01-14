package com.reimi.reimi_app.infrastructure.persistence.repository.match;

import java.util.List;
import java.util.UUID;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.reimi.reimi_app.infrastructure.persistence.entity.MatchEntity;

public interface JpaMatchRepository extends JpaRepository<MatchEntity, UUID> {

    boolean existsByUserAIdAndUserBId(UUID userAId, UUID userBId);

    @Query("""
        select
            case
                when m.userAId = :userId then m.userBId
                else m.userAId
            end
        from MatchEntity m
        where m.userAId = :userId
            or m.userBId = :userId
    """)
    List<UUID> findMatchedUserIds(UUID userId);
}
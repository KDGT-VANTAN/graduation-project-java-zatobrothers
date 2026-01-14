package com.reimi.reimi_app.infrastructure.persistence.repository.match;

import java.util.UUID;

import org.springframework.data.jpa.repository.JpaRepository;

import com.reimi.reimi_app.infrastructure.persistence.entity.MatchEntity;

public interface JpaMatchRepository extends JpaRepository<MatchEntity, UUID> {

    boolean existsByUserAIdAndUserBId(UUID userAId, UUID userBId);
}
package com.reimi.reimi_app.infrastructure.persistence.repository.profile;

import java.util.UUID;

import org.springframework.data.jpa.repository.JpaRepository;

import com.reimi.reimi_app.infrastructure.persistence.entity.ProfileEntity;

public interface JpaProfileRepository extends JpaRepository<ProfileEntity, UUID> {
}
package com.reimi.reimi_app.infrastructure.persistence.repository;

import java.util.UUID;

import org.springframework.data.jpa.repository.JpaRepository;

import com.reimi.reimi_app.infrastructure.persistence.user.UserEntity;

public interface JpaUserRepository extends JpaRepository<UserEntity, UUID> {
    boolean existsByEmail(String email);
}

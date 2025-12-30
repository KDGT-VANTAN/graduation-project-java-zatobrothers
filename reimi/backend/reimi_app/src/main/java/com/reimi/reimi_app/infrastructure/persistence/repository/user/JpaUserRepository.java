package com.reimi.reimi_app.infrastructure.persistence.repository.user;

import java.util.UUID;

import org.springframework.data.jpa.repository.JpaRepository;

import com.reimi.reimi_app.infrastructure.persistence.entity.UserEntity;

public interface JpaUserRepository extends JpaRepository<UserEntity, UUID> {
    boolean existsByFirebaseUid(String firebaseUid);
    boolean existsByEmail(String email);
}

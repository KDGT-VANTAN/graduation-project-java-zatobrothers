package com.reimi.reimi_app.infrastructure.persistence.repository.user;

import java.util.List;
import java.util.UUID;

import org.springframework.data.jpa.repository.JpaRepository;

import com.reimi.reimi_app.infrastructure.persistence.entity.UserEntity;

public interface JpaUserRepository extends JpaRepository<UserEntity, UUID> {
    List<UserEntity> findByFirebaseUidNot(String firebaseUid);
    boolean existsByFirebaseUid(String firebaseUid);
    boolean existsByEmail(String email);
}

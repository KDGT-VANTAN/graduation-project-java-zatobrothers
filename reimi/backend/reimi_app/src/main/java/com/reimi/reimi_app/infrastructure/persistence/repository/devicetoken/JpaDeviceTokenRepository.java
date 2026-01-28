package com.reimi.reimi_app.infrastructure.persistence.repository.devicetoken;

import com.reimi.reimi_app.infrastructure.persistence.entity.DeviceTokenEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

public interface JpaDeviceTokenRepository extends JpaRepository<DeviceTokenEntity, UUID> {

    Optional<DeviceTokenEntity> findByToken(String token);

    List<DeviceTokenEntity> findByUserId(UUID userId);
}

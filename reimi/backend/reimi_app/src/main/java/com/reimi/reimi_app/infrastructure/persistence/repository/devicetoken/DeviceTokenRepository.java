package com.reimi.reimi_app.infrastructure.persistence.repository.devicetoken;

import org.springframework.stereotype.Repository;

import com.reimi.reimi_app.infrastructure.persistence.entity.DeviceTokenEntity;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Repository
public class DeviceTokenRepository {

    private final JpaDeviceTokenRepository jpaDeviceTokenRepository;

    public DeviceTokenRepository(
        JpaDeviceTokenRepository jpaDeviceTokenRepository
    ) {
        this.jpaDeviceTokenRepository = jpaDeviceTokenRepository;
    }

    public Optional<DeviceTokenEntity> findByToken(String token) {
        return jpaDeviceTokenRepository.findByToken(token);
    }

    public List<DeviceTokenEntity> findByUserId(UUID userId) {
        return jpaDeviceTokenRepository.findByUserId(userId);
    }

    public void save(DeviceTokenEntity entity) {
        jpaDeviceTokenRepository.save(entity);
    }

}

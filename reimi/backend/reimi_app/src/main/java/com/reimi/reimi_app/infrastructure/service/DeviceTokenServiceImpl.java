package com.reimi.reimi_app.infrastructure.service;

import org.springframework.stereotype.Service;

import com.reimi.reimi_app.application.service.DeviceTokenService;
import com.reimi.reimi_app.domain.model.user.UserId;
import com.reimi.reimi_app.infrastructure.persistence.entity.DeviceTokenEntity;
import com.reimi.reimi_app.infrastructure.persistence.repository.devicetoken.DeviceTokenRepository;

import jakarta.transaction.Transactional;

@Service
@Transactional
public class DeviceTokenServiceImpl implements DeviceTokenService {

    private final DeviceTokenRepository deviceTokenRepository;

    public DeviceTokenServiceImpl(
        DeviceTokenRepository deviceTokenRepository
    ) {
        this.deviceTokenRepository = deviceTokenRepository;
    }

    @Override
    public void register(UserId userId, String token) {
        deviceTokenRepository.findByToken(token)
            .ifPresentOrElse(
                entity -> entity.reassign(userId.value()),
                () -> deviceTokenRepository.save(
                    DeviceTokenEntity.create(userId.value(), token)
                )
            );
    }
}

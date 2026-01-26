package com.reimi.reimi_app.infrastructure.service;

import java.util.List;

import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

import com.reimi.reimi_app.application.service.NotificationService;
import com.reimi.reimi_app.domain.model.user.User;
import com.reimi.reimi_app.domain.model.user.UserId;
import com.reimi.reimi_app.infrastructure.notification.PushNotificationSender;
import com.reimi.reimi_app.infrastructure.persistence.entity.DeviceTokenEntity;
import com.reimi.reimi_app.infrastructure.persistence.repository.devicetoken.DeviceTokenRepository;

@Service
public class NotificationServiceImpl implements NotificationService {

    private final DeviceTokenRepository deviceTokenRepository;
    private final PushNotificationSender pushNotificationSender;

    public NotificationServiceImpl(
        DeviceTokenRepository deviceTokenRepository,
        PushNotificationSender pushNotificationSender
    ) {
        this.deviceTokenRepository = deviceTokenRepository;
        this.pushNotificationSender = pushNotificationSender;
    }

    @Async
    @Override
    public void notifyMatchCreated(User fromUser, UserId toUserId) {
        List<DeviceTokenEntity> deviceTokens = deviceTokenRepository.findAllByUserId(toUserId.value());

        for (DeviceTokenEntity token : deviceTokens) {
            pushNotificationSender.sendMatchNotification(
                token.getToken(),
                "マッチング成立",
                fromUser.getName() + "とのマッチングが成立しました！"
            );
        }
    }
}

package com.reimi.reimi_app.infrastructure.notification;

public interface PushNotificationSender {
    void sendMatchNotification(
        String deviceToken,
        String title,
        String body
    );
}

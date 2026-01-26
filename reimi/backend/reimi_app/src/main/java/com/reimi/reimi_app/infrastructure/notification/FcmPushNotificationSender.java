package com.reimi.reimi_app.infrastructure.notification;

import org.springframework.stereotype.Component;

import com.google.firebase.messaging.FirebaseMessaging;
import com.google.firebase.messaging.Message;
import com.google.firebase.messaging.Notification;

@Component
public class FcmPushNotificationSender implements PushNotificationSender {

    @Override
    public void sendMatchNotification(
        String deviceToken,
        String title,
        String body
    ) {
        Message message = Message.builder()
            .setToken(deviceToken)
            .setNotification(
                Notification.builder()
                    .setTitle(title)
                    .setBody(body)
                    .build()
            )
            .putData("type", "MATCH")
            .build();

        try {
            String response = FirebaseMessaging.getInstance().sendAsync(message).get();
            System.out.println("マッチング通知成功: " + response);
        } catch (Exception e) {
            System.err.println("マッチング通知失敗: " + e.getMessage());
        }
    }
}

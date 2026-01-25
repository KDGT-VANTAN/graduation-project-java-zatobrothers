package com.reimi.reimi_app.application.service;

import com.reimi.reimi_app.domain.model.user.UserId;

public interface NotificationService {
    void notifyMatchCreated(UserId fromUserId, UserId toUserId);
}

package com.reimi.reimi_app.application.service;

import com.reimi.reimi_app.domain.model.user.User;
import com.reimi.reimi_app.domain.model.user.UserId;

public interface NotificationService {
    void notifyMatchCreated(User fromUser, UserId toUserId);
}

package com.reimi.reimi_app.application.usecase;

import com.reimi.reimi_app.domain.model.user.UserId;

public interface LikeUseCase {
    void likeUser(UserId toUserId);
}

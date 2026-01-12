package com.reimi.reimi_app.domain.repository;

import com.reimi.reimi_app.domain.model.like.Like;
import com.reimi.reimi_app.domain.model.user.UserId;

public interface LikeRepository {

    boolean exists(UserId fromUserId, UserId toUserId);

    void save(Like like);
}

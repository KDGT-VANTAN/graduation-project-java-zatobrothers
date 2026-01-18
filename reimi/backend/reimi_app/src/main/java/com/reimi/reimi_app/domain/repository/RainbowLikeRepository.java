package com.reimi.reimi_app.domain.repository;

import com.reimi.reimi_app.domain.model.rainbowlike.RainbowLike;
import com.reimi.reimi_app.domain.model.user.UserId;

public interface RainbowLikeRepository {

    boolean exists(UserId fromUserId, UserId toUserId);

    void save(RainbowLike rainbowLike);
}

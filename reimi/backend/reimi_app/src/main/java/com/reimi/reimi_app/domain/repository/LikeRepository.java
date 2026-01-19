package com.reimi.reimi_app.domain.repository;

import java.util.List;

import com.reimi.reimi_app.domain.model.like.Like;
import com.reimi.reimi_app.domain.model.user.UserId;

public interface LikeRepository {

    boolean exists(UserId fromUserId, UserId toUserId);

    void save(Like like);

    List<UserId> findLikeGivenUserIdsByFromUserId(UserId fromUserId);

    List<UserId> findLikeReceivedUserIdsByToUserId(UserId toUserId);
}

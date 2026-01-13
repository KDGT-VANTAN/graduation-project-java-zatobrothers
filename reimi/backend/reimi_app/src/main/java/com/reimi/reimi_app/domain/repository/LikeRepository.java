package com.reimi.reimi_app.domain.repository;

import java.util.List;
import java.util.Optional;

import com.reimi.reimi_app.domain.model.like.Like;
import com.reimi.reimi_app.domain.model.user.User;
import com.reimi.reimi_app.domain.model.user.UserId;

public interface LikeRepository {

    Optional<User> findUserByUserId(UserId userId);

    boolean exists(UserId fromUserId, UserId toUserId);

    void save(Like like);

    List<UserId> findLikeGivenUserIdsByFromUserId(UserId fromUserId);

    List<UserId> findLikeReceivedUserIdsByToUserId(UserId toUserId);
}

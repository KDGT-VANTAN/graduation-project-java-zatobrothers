package com.reimi.reimi_app.application.usecase;

import java.util.List;

import com.reimi.reimi_app.domain.model.user.User;
import com.reimi.reimi_app.domain.model.user.UserId;
public interface LikeUseCase {

    void likeUser(UserId toUserId);

    List<User> getLikeGivenUserList();
}

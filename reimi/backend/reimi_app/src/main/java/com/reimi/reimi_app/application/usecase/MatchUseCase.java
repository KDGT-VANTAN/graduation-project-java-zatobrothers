package com.reimi.reimi_app.application.usecase;

import java.util.List;

import com.reimi.reimi_app.domain.model.user.User;

public interface MatchUseCase {

    List<User> getMatchedUserList();

}

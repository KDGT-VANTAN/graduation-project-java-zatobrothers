package com.reimi.reimi_app.application.usecase;

import java.util.List;
import java.util.Optional;

import com.reimi.reimi_app.application.command.RegisterUserCommand;
import com.reimi.reimi_app.domain.model.user.User;

public interface UserUseCase {

    Optional<User> getUser(String firebaseUid);

    List<User> getUsersExcludingMe(String firebaseUid);

    void registerUser(RegisterUserCommand command);
}

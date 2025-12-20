package com.reimi.reimi_app.application.usecase;

import com.reimi.reimi_app.application.command.RegisterUserCommand;

public interface UserUseCase {
    void registerUser(RegisterUserCommand command);
}

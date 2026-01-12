package com.reimi.reimi_app.application.usecase;

import com.reimi.reimi_app.application.command.LikeUserCommand;
public interface LikeUseCase {
    void likeUser(LikeUserCommand command);
}

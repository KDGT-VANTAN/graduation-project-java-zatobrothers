package com.reimi.reimi_app.application.usecase;

import java.util.List;

import com.reimi.reimi_app.application.command.SendRainbowLikeCommand;
import com.reimi.reimi_app.domain.model.user.User;

public interface RainbowLikeUseCase {
    void rainbowLikeUser(SendRainbowLikeCommand command);

    List<User> getRainbowLikeGivenUserList();

    List<User> getRainbowLikeReceivedUserList();
}
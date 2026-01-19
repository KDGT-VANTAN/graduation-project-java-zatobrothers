package com.reimi.reimi_app.application.usecase;

import com.reimi.reimi_app.application.command.SendRainbowLikeCommand;

public interface RainbowLikeUseCase {
    void rainbowLikeUser(SendRainbowLikeCommand command);
}
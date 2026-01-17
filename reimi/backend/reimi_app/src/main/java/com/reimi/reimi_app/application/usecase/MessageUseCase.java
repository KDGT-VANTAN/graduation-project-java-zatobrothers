package com.reimi.reimi_app.application.usecase;

import com.reimi.reimi_app.application.command.SendTextMessageCommand;

public interface MessageUseCase {
    void sendText(SendTextMessageCommand command);
}
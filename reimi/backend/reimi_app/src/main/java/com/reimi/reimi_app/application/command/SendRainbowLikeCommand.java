package com.reimi.reimi_app.application.command;

import com.reimi.reimi_app.domain.model.user.UserId;

public record SendRainbowLikeCommand(
    UserId toUserId,
    String message
) {}
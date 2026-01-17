package com.reimi.reimi_app.application.command;

import com.reimi.reimi_app.domain.model.chatroom.ChatRoomId;
import com.reimi.reimi_app.domain.model.user.UserId;

public record SendTextMessageCommand(
    ChatRoomId chatRoomId,
    UserId senderId,
    String text
) {}
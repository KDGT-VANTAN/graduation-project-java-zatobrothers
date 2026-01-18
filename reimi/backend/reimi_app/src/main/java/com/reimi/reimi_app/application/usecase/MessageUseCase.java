package com.reimi.reimi_app.application.usecase;

import java.util.List;

import com.reimi.reimi_app.application.command.SendTextMessageCommand;
import com.reimi.reimi_app.domain.model.chatroom.ChatRoomId;
import com.reimi.reimi_app.domain.model.message.Message;

public interface MessageUseCase {

    void sendText(SendTextMessageCommand command);

    List<Message> getChatRoomMessageList(ChatRoomId chatRoomId);
}
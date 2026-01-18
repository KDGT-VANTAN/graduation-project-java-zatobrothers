package com.reimi.reimi_app.domain.repository;

import java.util.List;

import com.reimi.reimi_app.domain.model.chatroom.ChatRoomId;
import com.reimi.reimi_app.domain.model.message.Message;

public interface MessageRepository {

    void save(Message message);

    List<Message> findByChatRoomId(ChatRoomId chatRoomId);
}

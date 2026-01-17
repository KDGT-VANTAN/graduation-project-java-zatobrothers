package com.reimi.reimi_app.domain.repository;

import java.util.Optional;

import com.reimi.reimi_app.domain.model.chatroom.ChatRoom;
import com.reimi.reimi_app.domain.model.chatroom.ChatRoomId;

public interface ChatRoomRepository {

    Optional<ChatRoom> findByChatRoomId(ChatRoomId chatRoomId);

    void save(ChatRoom chatRoom);
}
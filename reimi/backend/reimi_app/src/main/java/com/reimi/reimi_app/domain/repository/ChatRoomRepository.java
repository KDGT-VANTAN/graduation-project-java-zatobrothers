package com.reimi.reimi_app.domain.repository;

import com.reimi.reimi_app.domain.model.chatroom.ChatRoom;

public interface ChatRoomRepository {

    void save(ChatRoom chatRoom);
}
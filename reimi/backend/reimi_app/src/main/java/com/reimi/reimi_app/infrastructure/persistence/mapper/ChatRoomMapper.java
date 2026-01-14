package com.reimi.reimi_app.infrastructure.persistence.mapper;

import com.reimi.reimi_app.domain.model.chatroom.ChatRoom;
import com.reimi.reimi_app.infrastructure.persistence.entity.ChatRoomEntity;
import com.reimi.reimi_app.infrastructure.persistence.entity.MatchEntity;

public class ChatRoomMapper {

    public static ChatRoomEntity toEntity(ChatRoom chatRoom, MatchEntity matchEntity) {
        ChatRoomEntity entity = new ChatRoomEntity();
        entity.setId(chatRoom.getId().value());
        entity.setMatchId(chatRoom.getMatchId().value());
        entity.setMatch(matchEntity);

        return entity;
    }
}

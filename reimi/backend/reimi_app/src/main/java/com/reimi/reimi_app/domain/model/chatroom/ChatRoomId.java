package com.reimi.reimi_app.domain.model.chatroom;

import java.util.UUID;

import com.reimi.reimi_app.domain.shared.identity.UuidGenerator;

public record ChatRoomId(UUID value) {
    public static ChatRoomId generate() {
        return new ChatRoomId(UuidGenerator.generate());
    }
}
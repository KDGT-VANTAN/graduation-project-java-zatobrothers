package com.reimi.reimi_app.infrastructure.web.converter;

import com.reimi.reimi_app.domain.model.chatroom.ChatRoomId;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

import java.util.UUID;

@Component
public class StringToChatRoomIdConverter implements Converter<String, ChatRoomId> {

    @Override
    public ChatRoomId convert(String source) {
        return new ChatRoomId(UUID.fromString(source));
    }
}
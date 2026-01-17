package com.reimi.reimi_app.infrastructure.persistence.mapper;

import com.reimi.reimi_app.domain.model.message.Message;
import com.reimi.reimi_app.domain.model.message.MessageText;
import com.reimi.reimi_app.infrastructure.persistence.entity.MessageEntity;
import com.reimi.reimi_app.infrastructure.persistence.entity.MessageTextEntity;

public class MessageMapper {

    public static MessageEntity toTextEntity(Message message) {
        MessageEntity entity = new MessageEntity();
        entity.setId(message.getId().value());
        entity.setChatRoomId(message.getChatRoomId().value());
        entity.setSenderId(message.getSenderId().value());

        MessageText messageText = (MessageText) message.getMessageContent();
        MessageTextEntity messageTextEntity = new MessageTextEntity(entity, messageText.getText());

        entity.setMessageContent(messageTextEntity);

        return entity;
    }
}

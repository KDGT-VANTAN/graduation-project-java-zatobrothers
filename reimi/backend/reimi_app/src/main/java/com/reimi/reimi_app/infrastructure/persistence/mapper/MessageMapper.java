package com.reimi.reimi_app.infrastructure.persistence.mapper;

import com.reimi.reimi_app.domain.model.chatroom.ChatRoomId;
import com.reimi.reimi_app.domain.model.message.Message;
import com.reimi.reimi_app.domain.model.message.MessageContent;
import com.reimi.reimi_app.domain.model.message.MessageId;
import com.reimi.reimi_app.domain.model.message.MessageText;
import com.reimi.reimi_app.domain.model.user.UserId;
import com.reimi.reimi_app.infrastructure.persistence.entity.MessageContentEntity;
import com.reimi.reimi_app.infrastructure.persistence.entity.MessageEntity;
import com.reimi.reimi_app.infrastructure.persistence.entity.MessageTextEntity;

public class MessageMapper {

    public static Message toDomain(MessageEntity entity) {
        MessageId messageId = new MessageId(entity.getId());

        MessageContent messageContent = toDomainMessageContent(messageId, entity.getMessageContent());

        return Message.reconstruct(
                messageId,
                new ChatRoomId(entity.getChatRoomId()),
                new UserId(entity.getSenderId()),
                messageContent
        );
    }

    private static MessageContent toDomainMessageContent(MessageId messageId, MessageContentEntity entity) {
        if (entity instanceof MessageTextEntity messageTextEntity) {
            return MessageText.reconstruct(
                messageId,
                messageTextEntity.getText()
            );
        }
        throw new IllegalArgumentException("未対応のメッセージコンテンツ種別です" + entity.getClass());
    }

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

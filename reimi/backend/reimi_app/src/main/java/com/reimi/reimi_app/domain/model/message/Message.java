package com.reimi.reimi_app.domain.model.message;

import java.time.OffsetDateTime;

import com.reimi.reimi_app.domain.model.chatroom.ChatRoomId;
import com.reimi.reimi_app.domain.model.user.UserId;

public class Message {

    private final MessageId id;
    private final ChatRoomId chatRoomId;
    private final UserId senderId;
    private final MessageContent messageContent;
    private final OffsetDateTime sentAt;

    private Message(
        MessageId id,
        ChatRoomId chatRoomId,
        UserId senderId,
        MessageContent messageContent,
        OffsetDateTime sentAt
    ) {
        this.id = id;
        this.chatRoomId = chatRoomId;
        this.senderId = senderId;
        this.messageContent = messageContent;
        this.sentAt = sentAt;
    }

    public static Message createText(
        ChatRoomId chatRoomId,
        UserId senderId,
        String text
    ) {
        MessageId messageId = MessageId.generate();
        MessageText messageText = MessageText.create(messageId, text);
        return new Message(
            messageId,
            chatRoomId,
            senderId,
            messageText,
            null
        );
    }

    public static Message reconstruct(
        MessageId id,
        ChatRoomId chatRoomId,
        UserId senderId,
        MessageContent messageContent,
        OffsetDateTime sentAt
    ) {
        return new Message(
            id,
            chatRoomId,
            senderId,
            messageContent,
            sentAt
        );
    }

    public MessageId getId() { return id; }
    public ChatRoomId getChatRoomId() { return chatRoomId; }
    public UserId getSenderId() { return senderId; }
    public MessageContent getMessageContent() { return messageContent; }
    public MessageType getMessageType() { return messageContent.getMessageType(); }
    public OffsetDateTime getSentAt() { return sentAt; }

}

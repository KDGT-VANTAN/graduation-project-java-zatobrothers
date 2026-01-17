package com.reimi.reimi_app.domain.model.message;

import com.reimi.reimi_app.domain.model.chatroom.ChatRoomId;
import com.reimi.reimi_app.domain.model.user.UserId;

public class Message {

    private final MessageId id;
    private final ChatRoomId chatRoomId;
    private final UserId senderId;
    private final MessageContent content;

    private Message(
        MessageId id,
        ChatRoomId chatRoomId,
        UserId senderId,
        MessageContent content
    ) {
        this.id = id;
        this.chatRoomId = chatRoomId;
        this.senderId = senderId;
        this.content = content;
    }

    public static Message createText(
        ChatRoomId chatRoomId,
        UserId senderId,
        String text
    ) {
        MessageId messageId = MessageId.generate();
        MessageText content = MessageText.create(messageId, text);
        return new Message(
            messageId,
            chatRoomId,
            senderId,
            content
        );
    }

    public MessageId getId() { return id; }
    public ChatRoomId getChatRoomId() { return chatRoomId; }
    public UserId getSenderId() { return senderId; }
    public MessageType getMessageType() { return content.getMessageType(); }

}

package com.reimi.reimi_app.domain.model.message;

public class MessageText implements MessageContent {

    private final MessageId messageId;
    private final String text;

    private MessageText(
        MessageId messageId,
        String text
    ) {
        this.messageId = messageId;
        this.text = text;
    }

    public static MessageText create(
        MessageId messageId,
        String text
    ) {
        return new MessageText(
            messageId,
            text
        );
    }

    public static MessageText reconstruct(
        MessageId messageId,
        String text
    ) {
        return new MessageText(
            messageId,
            text
        );
    }

    @Override
    public MessageType getMessageType() {
        return MessageType.TEXT;
    }

    public MessageId getMessageId() { return messageId; }
    public String getText() { return text; }
}

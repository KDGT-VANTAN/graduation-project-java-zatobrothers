package com.reimi.reimi_app.infrastructure.web.dto.response;

import java.util.UUID;

import com.reimi.reimi_app.domain.model.message.Message;
import com.reimi.reimi_app.domain.model.message.MessageContent;
import com.reimi.reimi_app.domain.model.message.MessageText;
import com.reimi.reimi_app.domain.model.message.MessageType;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(description = "チャットルームのメッセージ一覧取得用レスポンス")
public record GetMessageListResponse (

        @Schema(description = "メッセージID", example = "5bf5eb52-c5fb-4a4c-b6e3-25e53c28bf93")
        UUID messageId,

        @Schema(description = "送信したユーザーID", example = "4f1ab383-9382-4c42-bac6-318cb06ed246")
        UUID senderId,

        @Schema(description = "メッセージコンテンツ", example = "よろしくお願いします！")
        String content,

        @Schema(description = "メッセージタイプ", example = "TEXT")
        MessageType messageType
) {
    public static GetMessageListResponse from(Message message) {

        MessageContent messageContent = message.getMessageContent();

        String content = null;
        if (messageContent instanceof MessageText text) {
            content = text.getText();
        } else {
            throw new IllegalStateException("未対応のメッセージ種別です: ");
        }

        return new GetMessageListResponse(
            message.getId().value(),
            message.getSenderId().value(),
            content,
            messageContent.getMessageType()
        );
    }
}
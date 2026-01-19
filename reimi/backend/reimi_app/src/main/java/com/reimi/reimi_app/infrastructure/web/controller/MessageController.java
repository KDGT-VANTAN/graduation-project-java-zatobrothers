package com.reimi.reimi_app.infrastructure.web.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.reimi.reimi_app.application.command.SendTextMessageCommand;
import com.reimi.reimi_app.application.exception.client.ResourceNotFoundException;
import com.reimi.reimi_app.application.usecase.MessageUseCase;
import com.reimi.reimi_app.application.usecase.UserUseCase;
import com.reimi.reimi_app.domain.model.chatroom.ChatRoomId;
import com.reimi.reimi_app.domain.model.user.User;
import com.reimi.reimi_app.infrastructure.web.dto.request.SendMessageRequest;
import com.reimi.reimi_app.infrastructure.web.dto.response.GetMessageListResponse;
import com.reimi.reimi_app.infrastructure.web.openapi.message.GetChatRoomMessagesApi;
import com.reimi.reimi_app.infrastructure.web.openapi.message.SendTextMessageApi;
import com.reimi.reimi_app.security.AuthenticatedUserProvider;

import io.swagger.v3.oas.annotations.tags.Tag;

import org.springframework.web.bind.annotation.RequestBody;


@RestController
@RequestMapping("/chat-rooms")
@Tag(name = "ChatRoom", description = "チャットルーム関連のAPI")
public class MessageController {

    private final MessageUseCase messageUseCase;
    private final UserUseCase userUseCase;
    private final AuthenticatedUserProvider authenticatedUserProvider;

    public MessageController(
        MessageUseCase messageUseCase,
        UserUseCase userUseCase,
        AuthenticatedUserProvider authenticatedUserProvider
    ) {
        this.messageUseCase = messageUseCase;
        this.userUseCase = userUseCase;
        this.authenticatedUserProvider = authenticatedUserProvider;
    }

    @PostMapping("/{chatRoomId}/messages")
    @SendTextMessageApi
    public ResponseEntity<Void> sendTextMessage(
        @PathVariable("chatRoomId") ChatRoomId chatRoomId,
        @RequestBody SendMessageRequest request
    ) {
        String myFirebaseUid = authenticatedUserProvider.getFirebaseUid();
        User user = userUseCase.getUser(myFirebaseUid)
            .orElseThrow(() -> new ResourceNotFoundException("ユーザー"));

        messageUseCase.sendText(
            new SendTextMessageCommand(
                chatRoomId,
                user.getId(),
                request.text()
            )
        );

        return ResponseEntity.status(HttpStatus.CREATED).build();
    }

    @GetMapping("/{chatRoomId}/messages")
    @GetChatRoomMessagesApi
    public ResponseEntity<List<GetMessageListResponse>> getChatRoomMessages(@PathVariable ChatRoomId chatRoomId) {
        List<GetMessageListResponse> response = messageUseCase.getChatRoomMessageList(chatRoomId)
        .stream()
        .map(GetMessageListResponse::from)
        .toList();

        return ResponseEntity.ok(response);
    }
}
package com.reimi.reimi_app.infrastructure.service;

import org.springframework.stereotype.Service;

import com.reimi.reimi_app.application.command.SendTextMessageCommand;
import com.reimi.reimi_app.application.exception.client.AccessDeniedException;
import com.reimi.reimi_app.application.exception.client.ResourceNotFoundException;
import com.reimi.reimi_app.application.usecase.MessageUseCase;
import com.reimi.reimi_app.domain.model.chatroom.ChatRoom;
import com.reimi.reimi_app.domain.model.match.Match;
import com.reimi.reimi_app.domain.model.message.Message;
import com.reimi.reimi_app.domain.model.user.UserId;
import com.reimi.reimi_app.domain.repository.ChatRoomRepository;
import com.reimi.reimi_app.domain.repository.MatchRepository;
import com.reimi.reimi_app.domain.repository.MessageRepository;

import jakarta.transaction.Transactional;

@Service
@Transactional
public class MessageUseCaseImpl implements MessageUseCase {

    private final MessageRepository messageRepository;
    private final ChatRoomRepository chatRoomRepository;
    private final MatchRepository matchRepository;

    public MessageUseCaseImpl(
        MessageRepository messageRepository,
        ChatRoomRepository chatRoomRepository,
        MatchRepository matchRepository
    ) {
        this.messageRepository = messageRepository;
        this.chatRoomRepository = chatRoomRepository;
        this.matchRepository = matchRepository;

    }

    @Override
    public void sendText(SendTextMessageCommand command) {

        ChatRoom chatRoom = chatRoomRepository.findByChatRoomId(command.chatRoomId())
            .orElseThrow(() -> new ResourceNotFoundException("チャットルーム"));

        Match match = matchRepository.findByMatchId(chatRoom.getMatchId())
            .orElseThrow(() -> new ResourceNotFoundException("マッチング"));

        UserId senderId = command.senderId();

        // マッチング成立した同士のユーザーか検証
        if (!chatRoom.canSend(senderId, match)) {
            throw new AccessDeniedException();
        }

        Message message = Message.createText(
            chatRoom.getId(),
            senderId,
            command.text()
        );

        messageRepository.save(message);
    }
}

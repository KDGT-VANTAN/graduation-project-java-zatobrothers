package com.reimi.reimi_app.infrastructure.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.reimi.reimi_app.application.command.SendTextMessageCommand;
import com.reimi.reimi_app.application.exception.client.AccessDeniedException;
import com.reimi.reimi_app.application.exception.client.ResourceNotFoundException;
import com.reimi.reimi_app.application.usecase.MessageUseCase;
import com.reimi.reimi_app.domain.model.chatroom.ChatRoom;
import com.reimi.reimi_app.domain.model.chatroom.ChatRoomId;
import com.reimi.reimi_app.domain.model.match.Match;
import com.reimi.reimi_app.domain.model.message.Message;
import com.reimi.reimi_app.domain.model.user.User;
import com.reimi.reimi_app.domain.model.user.UserId;
import com.reimi.reimi_app.domain.repository.ChatRoomRepository;
import com.reimi.reimi_app.domain.repository.MatchRepository;
import com.reimi.reimi_app.domain.repository.MessageRepository;
import com.reimi.reimi_app.domain.repository.UserRepository;
import com.reimi.reimi_app.security.AuthenticatedUserProvider;

import jakarta.transaction.Transactional;

@Service
public class MessageUseCaseImpl implements MessageUseCase {

    private final MessageRepository messageRepository;
    private final ChatRoomRepository chatRoomRepository;
    private final MatchRepository matchRepository;
    private final UserRepository userRepository;
    private final AuthenticatedUserProvider authenticatedUserProvider;

    public MessageUseCaseImpl(
        MessageRepository messageRepository,
        ChatRoomRepository chatRoomRepository,
        MatchRepository matchRepository,
        UserRepository userRepository,
        AuthenticatedUserProvider authenticatedUserProvider
    ) {
        this.messageRepository = messageRepository;
        this.chatRoomRepository = chatRoomRepository;
        this.matchRepository = matchRepository;
        this.userRepository = userRepository;
        this.authenticatedUserProvider = authenticatedUserProvider;
    }

    @Override
    @Transactional
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

    @Override
    public List<Message> getChatRoomMessageList(ChatRoomId chatRoomId) {

        String myFirebaseUid = authenticatedUserProvider.getFirebaseUid();

        User me = userRepository.findMeByFirebaseUid(myFirebaseUid)
            .orElseThrow(() -> new ResourceNotFoundException("ユーザー"));

        UserId userId = me.getId();

        ChatRoom chatRoom = chatRoomRepository.findByChatRoomId(chatRoomId)
            .orElseThrow(() -> new ResourceNotFoundException("チャットルーム"));

        Match match = matchRepository.findByMatchId(chatRoom.getMatchId())
            .orElseThrow(() -> new ResourceNotFoundException("マッチング"));

        if (!chatRoom.canSend(userId, match)) {
            throw new AccessDeniedException();
        }

        return messageRepository.findByChatRoomId(chatRoomId);
    }
}

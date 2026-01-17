package com.reimi.reimi_app.infrastructure.persistence.repository.chatroom;

import java.util.Optional;

import org.springframework.stereotype.Repository;

import com.reimi.reimi_app.application.exception.client.ResourceNotFoundException;
import com.reimi.reimi_app.domain.model.chatroom.ChatRoom;
import com.reimi.reimi_app.domain.model.chatroom.ChatRoomId;
import com.reimi.reimi_app.domain.repository.ChatRoomRepository;
import com.reimi.reimi_app.infrastructure.persistence.entity.MatchEntity;
import com.reimi.reimi_app.infrastructure.persistence.mapper.ChatRoomMapper;
import com.reimi.reimi_app.infrastructure.persistence.repository.match.JpaMatchRepository;

@Repository
public class ChatRoomRepositoryImpl implements ChatRoomRepository {

    private final JpaChatRoomRepository jpaChatRoomRepository;
    private final JpaMatchRepository jpaMatchRepository;

    public ChatRoomRepositoryImpl(
        JpaChatRoomRepository jpaChatRoomRepository,
        JpaMatchRepository jpaMatchRepository
    ) {
        this.jpaChatRoomRepository = jpaChatRoomRepository;
        this.jpaMatchRepository = jpaMatchRepository;
    }
    @Override
    public Optional<ChatRoom> findByChatRoomId(ChatRoomId chatRoomId) {
        return jpaChatRoomRepository
            .findById(chatRoomId.value())
            .map(ChatRoomMapper::toDomain);
    }

    @Override
    public void save(ChatRoom chatRoom) {

        MatchEntity entity = jpaMatchRepository
            .findById(chatRoom.getMatchId().value())
            .orElseThrow(() -> new ResourceNotFoundException("マッチング履歴"));

        jpaChatRoomRepository.save(ChatRoomMapper.toEntity(chatRoom, entity));
    }
}

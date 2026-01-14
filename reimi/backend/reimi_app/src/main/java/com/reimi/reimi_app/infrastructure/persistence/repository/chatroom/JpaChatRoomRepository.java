package com.reimi.reimi_app.infrastructure.persistence.repository.chatroom;

import java.util.UUID;

import org.springframework.data.jpa.repository.JpaRepository;

import com.reimi.reimi_app.infrastructure.persistence.entity.ChatRoomEntity;

public interface JpaChatRoomRepository extends JpaRepository<ChatRoomEntity, UUID> {
}
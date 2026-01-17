package com.reimi.reimi_app.infrastructure.persistence.repository.message;

import java.util.UUID;

import org.springframework.data.jpa.repository.JpaRepository;

import com.reimi.reimi_app.infrastructure.persistence.entity.MessageEntity;

public interface JpaMessageRepository extends JpaRepository<MessageEntity, UUID> {
}

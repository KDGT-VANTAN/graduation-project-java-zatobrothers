package com.reimi.reimi_app.infrastructure.persistence.repository.message;

import org.springframework.stereotype.Repository;

import com.reimi.reimi_app.domain.model.message.Message;
import com.reimi.reimi_app.domain.repository.MessageRepository;
import com.reimi.reimi_app.infrastructure.persistence.entity.MessageEntity;
import com.reimi.reimi_app.infrastructure.persistence.mapper.MessageMapper;

@Repository
public class MessageRepositoryImpl implements MessageRepository {

    private final JpaMessageRepository jpaMessageRepository;

    public MessageRepositoryImpl(
        JpaMessageRepository jpaMessageRepository
    ) {
        this.jpaMessageRepository = jpaMessageRepository;
    }

    @Override
    public void save(Message message) {
        MessageEntity messageEntity = MessageMapper.toTextEntity(message);
        jpaMessageRepository.save(messageEntity);
    }
}

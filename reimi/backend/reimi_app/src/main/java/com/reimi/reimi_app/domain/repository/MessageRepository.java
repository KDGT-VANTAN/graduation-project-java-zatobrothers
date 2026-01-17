package com.reimi.reimi_app.domain.repository;

import com.reimi.reimi_app.domain.model.message.Message;

public interface MessageRepository {
    void save(Message message);
}

package com.reimi.reimi_app.domain.repository;

import com.reimi.reimi_app.domain.model.message.Message;
import com.reimi.reimi_app.domain.model.message.MessageText;

public interface MessageRepository {
    void save(Message message, MessageText messageText);
}

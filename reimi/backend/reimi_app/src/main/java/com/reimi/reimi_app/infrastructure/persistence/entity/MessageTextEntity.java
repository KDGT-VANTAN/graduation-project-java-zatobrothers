package com.reimi.reimi_app.infrastructure.persistence.entity;

import jakarta.persistence.Column;
import jakarta.persistence.DiscriminatorValue;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "message_texts")
@DiscriminatorValue("TEXT")
public class MessageTextEntity extends MessageContentEntity {

    @Column(name = "text", nullable = false, updatable = false)
    private String text;

    protected MessageTextEntity() {}

    public MessageTextEntity(MessageEntity message, String text) {
        this.message = message;
        this.text = text;
    }
}
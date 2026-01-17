package com.reimi.reimi_app.infrastructure.persistence.entity;

import java.util.UUID;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.MapsId;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "message_texts")
public class MessageTextEntity {

    @Id
    @Column(name = "message_id", nullable = false, updatable = false)
    private UUID messageId;

    @MapsId
    @OneToOne
    @JoinColumn(name = "message_id", nullable = false, updatable = false, insertable = false)
    private MessageEntity message;

    @Column(name = "text", nullable = false)
    private String text;
}
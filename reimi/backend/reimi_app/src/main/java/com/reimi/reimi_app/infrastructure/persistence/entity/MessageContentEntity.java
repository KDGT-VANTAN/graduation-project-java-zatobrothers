package com.reimi.reimi_app.infrastructure.persistence.entity;

import java.util.UUID;

import jakarta.persistence.Column;
import jakarta.persistence.DiscriminatorColumn;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Inheritance;
import jakarta.persistence.InheritanceType;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.MapsId;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "message_contents")
@Inheritance(strategy = InheritanceType.JOINED)
@DiscriminatorColumn(name = "message_type")
public abstract class MessageContentEntity {

    @Id
    @Column(name = "message_id", nullable = false, unique = true)
    private UUID messageId;

    @MapsId
    @OneToOne(optional = false)
    @JoinColumn(name = "message_id", nullable = false, updatable = false, insertable = false)
    protected MessageEntity message;
}

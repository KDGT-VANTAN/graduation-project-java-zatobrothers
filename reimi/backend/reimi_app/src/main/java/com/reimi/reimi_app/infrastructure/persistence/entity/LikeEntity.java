package com.reimi.reimi_app.infrastructure.persistence.entity;

import java.time.OffsetDateTime;
import java.time.ZoneOffset;
import java.util.UUID;

import jakarta.persistence.Column;
import jakarta.persistence.Id;
import jakarta.persistence.PrePersist;

public class LikeEntity {
    @Id
    private UUID id;

    @Column(name = "from_user_id", nullable = false)
    private UUID fromUserId;

    @Column(name = "to_user_id", nullable = false)
    private UUID toUserId;

    @Column(name = "created_at", nullable = false, updatable = false)
    private OffsetDateTime createdAt;

    @PrePersist
    protected void prePersist() {
        OffsetDateTime now = OffsetDateTime.now(ZoneOffset.UTC);
        this.createdAt = now;
    }

    public LikeEntity() {}
}

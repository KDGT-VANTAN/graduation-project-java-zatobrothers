package com.reimi.reimi_app.infrastructure.persistence.entity;

import java.time.OffsetDateTime;
import java.util.UUID;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.UniqueConstraint;
import lombok.Getter;

@Getter
@Entity
@Table(
    name = "device_tokens",
    uniqueConstraints = @UniqueConstraint(columnNames = "token")
)
public class DeviceTokenEntity {

    @Id
    @Column(name = "id", nullable = false, updatable = false)
    private UUID id;

    @Column(name = "user_id", nullable = false)
    private UUID userId;

    @Column(name = "token", nullable = false, unique = true)
    private String token;

    @Column(name = "last_used_at", nullable = false)
    private OffsetDateTime lastUsedAt;

    protected DeviceTokenEntity() {}

    public static DeviceTokenEntity create(UUID userId, String token) {

        DeviceTokenEntity entity = new DeviceTokenEntity();

        entity.id = UUID.randomUUID();
        entity.userId = userId;
        entity.token = token;
        entity.lastUsedAt = OffsetDateTime.now();

        return entity;
    }

    public void reassign(UUID userId) {
        this.userId = userId;
        this.lastUsedAt = OffsetDateTime.now();
    }
}
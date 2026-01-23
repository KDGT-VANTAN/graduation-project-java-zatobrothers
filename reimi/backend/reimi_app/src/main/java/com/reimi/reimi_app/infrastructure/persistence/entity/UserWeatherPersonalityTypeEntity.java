package com.reimi.reimi_app.infrastructure.persistence.entity;

import java.time.OffsetDateTime;
import java.time.ZoneOffset;
import java.util.UUID;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;

import jakarta.persistence.Table;
import jakarta.persistence.UniqueConstraint;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(
    name = "user_weather_personality_types",
    uniqueConstraints = {
        @UniqueConstraint(name = "uk_user_weather_personality_types_user_id", columnNames = "user_id")
    }
)
public class UserWeatherPersonalityTypeEntity {

    @Id
    @Column(name = "id", nullable = false, updatable = false)
    private UUID id;

    @Column(name = "user_id", nullable = false, unique = true)
    private UUID userId;

    @OneToOne
    @JoinColumn(name = "user_id", nullable = false, updatable = false, insertable = false)
    private UserEntity user;

    @Column(name = "type_code", nullable = false, updatable = false, insertable = false)
    private String typeCode;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "type_code", nullable = false)
    private WeatherPersonalityTypeEntity weatherPersonalityType;

    @Column(name = "score_sensitivity")
    private int scoreSensitivity;

    @Column(name = "score_preparedness")
    private int scorePreparedness;

    @Column(name = "score_activity")
    private int scoreActivity;

    @Column(name = "score_motivation")
    private int scoreMotivation;

    @Column(name = "created_at", nullable = false, updatable = false)
    private OffsetDateTime createdAt;

    @Column(name = "updated_at", nullable = false)
    private OffsetDateTime updatedAt;

    @PrePersist
    protected void prePersist() {
        OffsetDateTime now = OffsetDateTime.now(ZoneOffset.UTC);
        this.createdAt = now;
        this.updatedAt = now;
    }

    @PreUpdate
    protected void preUpdate() {
        this.updatedAt = OffsetDateTime.now(ZoneOffset.UTC);
    }

    public UserWeatherPersonalityTypeEntity() {}
}

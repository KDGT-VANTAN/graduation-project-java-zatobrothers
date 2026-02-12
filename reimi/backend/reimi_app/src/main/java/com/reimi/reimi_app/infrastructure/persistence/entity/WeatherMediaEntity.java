package com.reimi.reimi_app.infrastructure.persistence.entity;

import java.time.OffsetDateTime;
import java.time.ZoneOffset;
import java.util.UUID;

import com.reimi.reimi_app.domain.model.report.value.MediaType;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.FetchType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.PrePersist;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "weather_media")
public class WeatherMediaEntity {

    @Id
    @Column(name = "id", nullable = false, updatable = false)
    private UUID id;

    @Enumerated(EnumType.STRING)
    @Column(name = "media_type", nullable = false, updatable = false)
    private MediaType mediaType;

    @Column(name = "url", nullable = false, updatable = false)
    private String url;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "weather_report_id", nullable = false, updatable = false)
    private WeatherReportEntity weatherReport;

    @Column(name = "created_at", nullable = false, updatable = false)
    private OffsetDateTime createdAt;

    @PrePersist
    protected void prePersist() {
        OffsetDateTime now = OffsetDateTime.now(ZoneOffset.UTC);
        this.createdAt = now;
    }

    public WeatherMediaEntity(
            UUID id,
            MediaType mediaType,
            String url,
            WeatherReportEntity weatherReport
    ) {
        this.id = id;
        this.mediaType = mediaType;
        this.url = url;
        this.weatherReport = weatherReport;
    }

    public WeatherMediaEntity() {}
}

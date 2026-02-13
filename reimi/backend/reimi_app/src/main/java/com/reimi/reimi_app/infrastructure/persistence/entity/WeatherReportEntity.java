package com.reimi.reimi_app.infrastructure.persistence.entity;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.OffsetDateTime;
import java.time.ZoneOffset;
import java.util.UUID;

import com.reimi.reimi_app.domain.model.report.value.FeelingType;
import com.reimi.reimi_app.domain.model.report.value.ForecastType;
import com.reimi.reimi_app.domain.model.report.value.WeatherType;
import com.reimi.reimi_app.infrastructure.persistence.embeddable.WeatherObservationEmbeddable;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Embedded;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.Id;
import jakarta.persistence.OneToOne;
import jakarta.persistence.PrePersist;
import jakarta.persistence.Table;
import jakarta.persistence.UniqueConstraint;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(
    name = "weather_reports",
    uniqueConstraints = {
        @UniqueConstraint(
            name = "uk_user_report_date",
            columnNames = {"user_id", "report_date"}
        )
    }
)
public class WeatherReportEntity {

    @Id
    @Column(name = "id", nullable = false, updatable = false)
    private UUID id;

    @Column(name = "user_id", nullable = false, updatable = false)
    private UUID userId;

    @Column(name = "comment", nullable = false, updatable = false)
    private String comment;

    @Enumerated(EnumType.STRING)
    @Column(name = "weather_type", nullable = false, updatable = false)
    private WeatherType weatherType;

    @Enumerated(EnumType.STRING)
    @Column(name = "feeling_type", nullable = false, updatable = false)
    private FeelingType feelingType;

    @Enumerated(EnumType.STRING)
    @Column(name = "forecast_type", nullable = false, updatable = false)
    private ForecastType forecastType;

    @Column(name = "latitude", nullable = false, updatable = false)
    private BigDecimal latitude;

    @Column(name = "longitude", nullable = false, updatable = false)
    private BigDecimal longitude;

    @Column(name = "report_date", nullable = false, updatable = false)
    private LocalDate reportDate;

    @Column(name = "created_at", nullable = false, updatable = false)
    private OffsetDateTime createdAt;

    @OneToOne(
        mappedBy = "weatherReport",
        cascade = CascadeType.ALL,
        orphanRemoval = true
    )
    private WeatherMediaEntity media;

    @Embedded
    private WeatherObservationEmbeddable observation;

    @PrePersist
    protected void prePersist() {
        OffsetDateTime now = OffsetDateTime.now(ZoneOffset.UTC);
        this.createdAt = now;
        this.reportDate = now.toLocalDate();
    }

    public WeatherReportEntity() {}
}

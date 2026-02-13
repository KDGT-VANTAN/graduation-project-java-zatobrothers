package com.reimi.reimi_app.infrastructure.persistence.embeddable;

import java.math.BigDecimal;

import com.reimi.reimi_app.domain.model.report.value.WindDirection;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import lombok.Getter;

@Getter
@Embeddable
public class WeatherObservationEmbeddable {

    @Column(name = "temperature", updatable = false)
    private BigDecimal temperature;

    @Column(name = "humidity", updatable = false)
    private BigDecimal humidity;

    @Column(name = "pressure", updatable = false)
    private BigDecimal pressure;

    @Column(name = "windSpeed", updatable = false)
    private BigDecimal windSpeed;

    @Enumerated(EnumType.STRING)
    @Column(name = "windDirection", updatable = false)
    private WindDirection windDirection;

    public WeatherObservationEmbeddable(
            BigDecimal temperature,
            BigDecimal humidity,
            BigDecimal pressure,
            BigDecimal windSpeed,
            WindDirection windDirection
    ) {
        this.temperature = temperature;
        this.humidity = humidity;
        this.pressure = pressure;
        this.windSpeed = windSpeed;
        this.windDirection = windDirection;
    }

    public WeatherObservationEmbeddable() {}
}
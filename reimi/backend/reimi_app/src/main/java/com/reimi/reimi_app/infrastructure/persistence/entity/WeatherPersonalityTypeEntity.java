package com.reimi.reimi_app.infrastructure.persistence.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "weather_personality_types")
public class WeatherPersonalityTypeEntity {

    @Id
    @Column(name = "code", nullable = false, updatable = false, length = 4)
    private String code;

    @Column(name = "name", nullable = false, updatable = false)
    private String name;

    @Column(columnDefinition = "TEXT", name = "description", nullable = false, updatable = false)
    private String description;

    @Column(name = "image_path", nullable = false, updatable = false)
    private String imagePath;

    public WeatherPersonalityTypeEntity() {}
}

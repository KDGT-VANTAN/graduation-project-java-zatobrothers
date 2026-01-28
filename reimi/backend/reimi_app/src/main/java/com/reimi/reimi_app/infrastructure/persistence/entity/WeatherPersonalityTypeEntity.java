package com.reimi.reimi_app.infrastructure.persistence.entity;

import java.util.List;

import org.hibernate.annotations.JdbcTypeCode;
import org.hibernate.type.SqlTypes;

import com.reimi.reimi_app.domain.model.weatherpersonality.AxisFeature;
import com.reimi.reimi_app.domain.model.weatherpersonality.BehaviorTendency;

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

    @Column(columnDefinition = "TEXT", name = "catchphrase", nullable = false, updatable = false)
    private String catchphrase;

    @Column(name = "image_path", nullable = false, updatable = false)
    private String imagePath;

    @Column(columnDefinition = "TEXT", name = "rulingStatement", nullable = false, updatable = false)
    private String rulingStatement;

    @JdbcTypeCode(SqlTypes.JSON)
    @Column(columnDefinition = "jsonb", name = "axis_features", nullable = false)
    private List<AxisFeature> axisFeatures;

    @JdbcTypeCode(SqlTypes.JSON)
    @Column(columnDefinition = "jsonb", name = "behavior_tendencies", nullable = false)
    private List<BehaviorTendency> behaviorTendencies;

    @Column(columnDefinition = "TEXT", name = "gods_message", nullable = false, updatable = false)
    private String godsMessage;

    public WeatherPersonalityTypeEntity(
        String code,
        String name,
        String catchphrase,
        String imagePath,
        String rulingStatement,
        List<AxisFeature> axisFeatures,
        List<BehaviorTendency> behaviorTendencies,
        String godsMessage
    ) {
        this.code = code;
        this.name = name;
        this.catchphrase = catchphrase;
        this.imagePath = imagePath;
        this.rulingStatement = rulingStatement;
        this.axisFeatures = axisFeatures;
        this.behaviorTendencies = behaviorTendencies;
        this.godsMessage = godsMessage;
    }

    public WeatherPersonalityTypeEntity() {}
}

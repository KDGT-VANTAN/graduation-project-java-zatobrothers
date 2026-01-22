package com.reimi.reimi_app.infrastructure.persistence.mapper;

import com.reimi.reimi_app.domain.model.weatherpersonality.WeatherPersonalityCode;
import com.reimi.reimi_app.domain.model.weatherpersonality.WeatherPersonalityType;
import com.reimi.reimi_app.infrastructure.persistence.entity.WeatherPersonalityTypeEntity;

public class WeatherPersonalityTypeMapper {

    public static WeatherPersonalityType toDomain(WeatherPersonalityTypeEntity entity) {
        WeatherPersonalityCode code = WeatherPersonalityCode.from(entity.getCode());
        return WeatherPersonalityType.from(code);
    }

    public static WeatherPersonalityTypeEntity toEntity(WeatherPersonalityType type) {
        return new WeatherPersonalityTypeEntity(
            type.getCode().name(),
            type.getName(),
            type.getDescription(),
            type.getImagePath()
        );
    }

}

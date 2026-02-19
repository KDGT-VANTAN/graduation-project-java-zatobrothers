package com.reimi.reimi_app.infrastructure.persistence.mapper;

import com.reimi.reimi_app.domain.model.weatherpersonality.type.WeatherPersonalityCode;
import com.reimi.reimi_app.domain.model.weatherpersonality.type.WeatherPersonalityType;
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
            type.getCatchphrase(),
            type.getImagePath(),
            type.getRulingStatement(),
            type.getAxisFeatures(),
            type.getBehaviorTendencies(),
            type.getGodsMessage()
        );
    }

}

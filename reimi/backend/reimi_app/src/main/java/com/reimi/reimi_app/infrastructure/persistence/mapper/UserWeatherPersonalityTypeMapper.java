package com.reimi.reimi_app.infrastructure.persistence.mapper;

import com.reimi.reimi_app.domain.model.weatherpersonality.UserWeatherPersonalityType;
import com.reimi.reimi_app.infrastructure.persistence.entity.UserEntity;
import com.reimi.reimi_app.infrastructure.persistence.entity.UserWeatherPersonalityTypeEntity;
import com.reimi.reimi_app.infrastructure.persistence.entity.WeatherPersonalityTypeEntity;

public class UserWeatherPersonalityTypeMapper {

    public static UserWeatherPersonalityTypeEntity toEntity(
        UserWeatherPersonalityType userWeatherPersonalityType,
        UserEntity userEntity,
        WeatherPersonalityTypeEntity weatherPersonalityTypeEntity
    ) {
        UserWeatherPersonalityTypeEntity entity = new UserWeatherPersonalityTypeEntity();
        entity.setId(userWeatherPersonalityType.getId().value());
        entity.setUserId(userWeatherPersonalityType.getUserId().value());
        entity.setUser(userEntity);
        entity.setTypeCode(userWeatherPersonalityType.getWeatherPersonalityCode().name());
        entity.setWeatherPersonalityType(weatherPersonalityTypeEntity);
        entity.setScoreSensitivity(userWeatherPersonalityType.getWeatherPersonalityScore().sensitivity());
        entity.setScorePreparedness(userWeatherPersonalityType.getWeatherPersonalityScore().preparedness());
        entity.setScoreActivity(userWeatherPersonalityType.getWeatherPersonalityScore().activity());
        entity.setScoreMotivation(userWeatherPersonalityType.getWeatherPersonalityScore().motivation());

        return entity;
    }
}

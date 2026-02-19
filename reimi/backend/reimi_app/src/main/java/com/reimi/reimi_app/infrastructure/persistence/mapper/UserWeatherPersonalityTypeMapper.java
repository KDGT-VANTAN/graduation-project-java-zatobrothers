package com.reimi.reimi_app.infrastructure.persistence.mapper;

import com.reimi.reimi_app.domain.model.user.UserId;
import com.reimi.reimi_app.domain.model.weatherpersonality.user.UserWeatherPersonalityType;
import com.reimi.reimi_app.domain.model.weatherpersonality.user.UserWeatherPersonalityTypeId;
import com.reimi.reimi_app.infrastructure.persistence.entity.UserEntity;
import com.reimi.reimi_app.infrastructure.persistence.entity.UserWeatherPersonalityTypeEntity;
import com.reimi.reimi_app.infrastructure.persistence.entity.WeatherPersonalityTypeEntity;

public class UserWeatherPersonalityTypeMapper {

    public static UserWeatherPersonalityType toDomain(UserWeatherPersonalityTypeEntity entity) {
        return UserWeatherPersonalityType.reconstruct(
                new UserWeatherPersonalityTypeId(entity.getId()),
                new UserId(entity.getUserId()),
                WeatherPersonalityTypeMapper.toDomain(entity.getWeatherPersonalityType()),
                entity.getScoreSensitivity(),
                entity.getScorePreparedness(),
                entity.getScoreActivity(),
                entity.getScoreMotivation()
        );
    }

    public static UserWeatherPersonalityTypeEntity toEntity(
        UserWeatherPersonalityType userWeatherPersonalityType,
        UserEntity userEntity,
        WeatherPersonalityTypeEntity weatherPersonalityTypeEntity
    ) {
        UserWeatherPersonalityTypeEntity entity = new UserWeatherPersonalityTypeEntity();
        entity.setId(userWeatherPersonalityType.getId().value());
        entity.setUserId(userWeatherPersonalityType.getUserId().value());
        entity.setUser(userEntity);
        entity.setTypeCode(weatherPersonalityTypeEntity.getCode());
        entity.setWeatherPersonalityType(weatherPersonalityTypeEntity);
        entity.setScoreSensitivity(userWeatherPersonalityType.getWeatherPersonalityScore().sensitivity());
        entity.setScorePreparedness(userWeatherPersonalityType.getWeatherPersonalityScore().preparedness());
        entity.setScoreActivity(userWeatherPersonalityType.getWeatherPersonalityScore().activity());
        entity.setScoreMotivation(userWeatherPersonalityType.getWeatherPersonalityScore().motivation());

        return entity;
    }
}

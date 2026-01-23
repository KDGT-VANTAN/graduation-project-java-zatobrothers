package com.reimi.reimi_app.infrastructure.persistence.repository.userweatherpersonalitytype;

import com.reimi.reimi_app.application.exception.client.ResourceNotFoundException;
import com.reimi.reimi_app.domain.model.weatherpersonality.UserWeatherPersonalityType;
import com.reimi.reimi_app.domain.repository.UserWeatherPersonalityTypeRepository;
import com.reimi.reimi_app.infrastructure.persistence.entity.UserEntity;
import com.reimi.reimi_app.infrastructure.persistence.entity.WeatherPersonalityTypeEntity;
import com.reimi.reimi_app.infrastructure.persistence.mapper.UserWeatherPersonalityTypeMapper;
import com.reimi.reimi_app.infrastructure.persistence.repository.user.JpaUserRepository;
import com.reimi.reimi_app.infrastructure.persistence.repository.weatherpersonalitytype.JpaWeatherPersonalityTypeRepository;

public class UserWeatherPersonalityTypeRepositoryImpl implements UserWeatherPersonalityTypeRepository {

    private final JpaUserWeatherPersonalityTypeRepository jpaUserWeatherPersonalityTypeRepository;
    private final JpaUserRepository jpaUserRepository;
    private final JpaWeatherPersonalityTypeRepository jpaWeatherPersonalityTypeRepository;


    public UserWeatherPersonalityTypeRepositoryImpl(
        JpaUserWeatherPersonalityTypeRepository jpaUserWeatherPersonalityTypeRepository,
        JpaUserRepository jpaUserRepository,
        JpaWeatherPersonalityTypeRepository jpaWeatherPersonalityTypeRepository
    ) {
        this.jpaUserWeatherPersonalityTypeRepository = jpaUserWeatherPersonalityTypeRepository;
        this.jpaUserRepository = jpaUserRepository;
        this.jpaWeatherPersonalityTypeRepository = jpaWeatherPersonalityTypeRepository;
    }

    @Override
    public void save(UserWeatherPersonalityType userWeatherPersonalityType) {
        UserEntity userEntity = jpaUserRepository
            .findById(userWeatherPersonalityType.getUserId().value())
            .orElseThrow(() -> new ResourceNotFoundException("ユーザー"));

        WeatherPersonalityTypeEntity weatherPersonalityTypEntity = jpaWeatherPersonalityTypeRepository
            .findByCode(userWeatherPersonalityType.getWeatherPersonalityCode().name())
            .orElseThrow(() -> new ResourceNotFoundException("ウェザーパーソナリティタイプ"));

        jpaUserWeatherPersonalityTypeRepository
            .save(UserWeatherPersonalityTypeMapper
            .toEntity(
                userWeatherPersonalityType,
                userEntity,
                weatherPersonalityTypEntity
            ));
    };
}

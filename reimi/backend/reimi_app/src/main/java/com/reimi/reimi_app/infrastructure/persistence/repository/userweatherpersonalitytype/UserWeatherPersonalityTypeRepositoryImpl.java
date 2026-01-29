package com.reimi.reimi_app.infrastructure.persistence.repository.userweatherpersonalitytype;

import java.util.Optional;

import org.springframework.stereotype.Repository;

import com.reimi.reimi_app.application.exception.client.ResourceNotFoundException;
import com.reimi.reimi_app.domain.model.user.UserId;
import com.reimi.reimi_app.domain.model.weatherpersonality.UserWeatherPersonalityType;
import com.reimi.reimi_app.domain.repository.UserWeatherPersonalityTypeRepository;
import com.reimi.reimi_app.infrastructure.persistence.entity.UserEntity;
import com.reimi.reimi_app.infrastructure.persistence.entity.WeatherPersonalityTypeEntity;
import com.reimi.reimi_app.infrastructure.persistence.mapper.UserWeatherPersonalityTypeMapper;
import com.reimi.reimi_app.infrastructure.persistence.repository.user.JpaUserRepository;
import com.reimi.reimi_app.infrastructure.persistence.repository.weatherpersonalitytype.JpaWeatherPersonalityTypeRepository;

@Repository
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
    public boolean exists(UserId UserId) {
        return jpaUserWeatherPersonalityTypeRepository.existsByUserId(UserId.value());
    };

    @Override
    public void save(UserWeatherPersonalityType userWeatherPersonalityType) {
        UserEntity userEntity = jpaUserRepository
            .findById(userWeatherPersonalityType.getUserId().value())
            .orElseThrow(() -> new ResourceNotFoundException("ユーザー"));

        WeatherPersonalityTypeEntity weatherPersonalityTypEntity = jpaWeatherPersonalityTypeRepository
            .findByCode(userWeatherPersonalityType.getWeatherPersonalityType().getCode().name())
            .orElseThrow(() -> new ResourceNotFoundException("ウェザーパーソナリティタイプ"));

        jpaUserWeatherPersonalityTypeRepository
            .save(UserWeatherPersonalityTypeMapper
            .toEntity(
                userWeatherPersonalityType,
                userEntity,
                weatherPersonalityTypEntity
            ));
    };

    @Override
    public Optional<UserWeatherPersonalityType> findByUserId(UserId userId) {
        return jpaUserWeatherPersonalityTypeRepository
            .findByUserId(userId.value())
            .map(UserWeatherPersonalityTypeMapper::toDomain);
    }
}

package com.reimi.reimi_app.infrastructure.persistence.repository.weatherpersonalitytype;

import java.util.Optional;

import org.springframework.stereotype.Repository;

import com.reimi.reimi_app.domain.model.weatherpersonality.type.WeatherPersonalityCode;
import com.reimi.reimi_app.domain.model.weatherpersonality.type.WeatherPersonalityType;
import com.reimi.reimi_app.domain.repository.WeatherPersonalityTypeRepository;
import com.reimi.reimi_app.infrastructure.persistence.mapper.WeatherPersonalityTypeMapper;

@Repository
public class WeatherPersonalityTypeRepositoryImpl implements WeatherPersonalityTypeRepository {

    private final JpaWeatherPersonalityTypeRepository jpaWeatherPersonalityTypeRepository;

    public WeatherPersonalityTypeRepositoryImpl(
        JpaWeatherPersonalityTypeRepository jpaWeatherPersonalityTypeRepository
    ) {
        this.jpaWeatherPersonalityTypeRepository = jpaWeatherPersonalityTypeRepository;
    }

    @Override
    public Optional<WeatherPersonalityType> findByCode(WeatherPersonalityCode weatherPersonalityCode) {
        return jpaWeatherPersonalityTypeRepository
            .findByCode(weatherPersonalityCode.name())
            .map(WeatherPersonalityTypeMapper::toDomain);
    }

    @Override
    public void save(WeatherPersonalityType weatherPersonalityType) {
        jpaWeatherPersonalityTypeRepository.save(WeatherPersonalityTypeMapper.toEntity(weatherPersonalityType));
    }
}
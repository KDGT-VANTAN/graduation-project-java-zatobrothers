package com.reimi.reimi_app.domain.repository;

import java.util.Optional;

import com.reimi.reimi_app.domain.model.weatherpersonality.WeatherPersonalityType;

public interface WeatherPersonalityRepository {

    Optional<WeatherPersonalityType> findByCode(String code);

    void save(WeatherPersonalityType type);
}

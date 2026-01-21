package com.reimi.reimi_app.domain.repository;

import java.util.Optional;

import com.reimi.reimi_app.domain.model.weatherpersonality.WeatherPersonalityCode;
import com.reimi.reimi_app.domain.model.weatherpersonality.WeatherPersonalityType;

public interface WeatherPersonalityTypeRepository {

    Optional<WeatherPersonalityType> findByCode(WeatherPersonalityCode code);

    void save(WeatherPersonalityType weatherPersonalityType);
}

package com.reimi.reimi_app.infrastructure.persistence.repository.weatherpersonalitytype;

import org.springframework.data.jpa.repository.JpaRepository;

import com.reimi.reimi_app.infrastructure.persistence.entity.WeatherPersonalityTypeEntity;

public interface JpaWeatherPersonalityTypeRepository extends JpaRepository<WeatherPersonalityTypeEntity, String> {
}
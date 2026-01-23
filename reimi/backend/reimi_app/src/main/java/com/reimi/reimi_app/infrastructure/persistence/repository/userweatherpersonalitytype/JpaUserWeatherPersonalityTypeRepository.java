package com.reimi.reimi_app.infrastructure.persistence.repository.userweatherpersonalitytype;

import java.util.UUID;

import org.springframework.data.jpa.repository.JpaRepository;

import com.reimi.reimi_app.infrastructure.persistence.entity.UserWeatherPersonalityTypeEntity;

public interface JpaUserWeatherPersonalityTypeRepository extends JpaRepository<UserWeatherPersonalityTypeEntity, UUID> {
}
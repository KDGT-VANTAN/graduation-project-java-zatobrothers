package com.reimi.reimi_app.domain.repository;

import java.util.Optional;

import com.reimi.reimi_app.domain.model.user.UserId;
import com.reimi.reimi_app.domain.model.weatherpersonality.user.UserWeatherPersonalityType;

public interface UserWeatherPersonalityTypeRepository {

    boolean exists(UserId UserId);

    void save(UserWeatherPersonalityType userWeatherPersonalityType);

    Optional<UserWeatherPersonalityType> findByUserId(UserId userId);
}

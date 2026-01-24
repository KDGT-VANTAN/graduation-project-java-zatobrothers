package com.reimi.reimi_app.domain.repository;

import com.reimi.reimi_app.domain.model.user.UserId;
import com.reimi.reimi_app.domain.model.weatherpersonality.UserWeatherPersonalityType;

public interface UserWeatherPersonalityTypeRepository {

    boolean exists(UserId UserId);

    void save(UserWeatherPersonalityType userWeatherPersonalityType);
}

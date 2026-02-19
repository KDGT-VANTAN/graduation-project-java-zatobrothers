package com.reimi.reimi_app.application.dto.output;

import java.util.Map;

import com.reimi.reimi_app.domain.model.item.ItemTypeCode;
import com.reimi.reimi_app.domain.model.user.UserId;
import com.reimi.reimi_app.domain.model.weatherpersonality.user.UserWeatherPersonalityType;

public record UserItemOutput(
    UserId userId,
    String name,
    String mainPhotoUrl,
    UserWeatherPersonalityType userWeatherPersonalityType,
    Map<ItemTypeCode, Integer> items
) {}
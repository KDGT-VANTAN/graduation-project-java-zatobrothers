package com.reimi.reimi_app.domain.model.weatherpersonality;

import com.reimi.reimi_app.domain.model.user.UserId;

public class UserWeatherPersonalityType {

    private final UserWeatherPersonalityTypeId id;
    private final UserId userId;
    private final WeatherPersonalityType type;
    private final WeatherPersonalityScore weatherPersonalityScore;

    private UserWeatherPersonalityType(
        UserWeatherPersonalityTypeId id,
        UserId userId,
        WeatherPersonalityType type,
        WeatherPersonalityScore weatherPersonalityScore
    ) {
        this.id = id;
        this.userId = userId;
        this.type = type;
        this.weatherPersonalityScore = weatherPersonalityScore;
    }

    public static UserWeatherPersonalityType result(
        UserId userId,
        WeatherPersonalityType type,
        WeatherPersonalityScore weatherPersonalityScore
    ) {
        UserWeatherPersonalityTypeId userWeatherPersonalityTypeId = UserWeatherPersonalityTypeId.generate();
        return new UserWeatherPersonalityType(
            userWeatherPersonalityTypeId,
            userId,
            type,
            weatherPersonalityScore
        );

    }

    public UserWeatherPersonalityTypeId getId() { return id; }
    public UserId getUserId() { return userId; }
    public WeatherPersonalityType getWeatherPersonalityType() { return type; }
    public WeatherPersonalityScore getWeatherPersonalityScore() { return weatherPersonalityScore; }

}

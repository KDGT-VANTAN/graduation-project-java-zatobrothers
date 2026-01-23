package com.reimi.reimi_app.domain.model.weatherpersonality;

import com.reimi.reimi_app.domain.model.user.UserId;

public class UserWeatherPersonalityType {

    private final UserWeatherPersonalityTypeId id;
    private final UserId userId;
    private final WeatherPersonalityCode code;
    private final WeatherPersonalityScore weatherPersonalityScore;

    private UserWeatherPersonalityType(
        UserWeatherPersonalityTypeId id,
        UserId userId,
        WeatherPersonalityCode code,
        WeatherPersonalityScore weatherPersonalityScore
    ) {
        this.id = id;
        this.userId = userId;
        this.code = code;
        this.weatherPersonalityScore = weatherPersonalityScore;
    }

    public static UserWeatherPersonalityType result(
        UserId userId,
        WeatherPersonalityCode code,
        WeatherPersonalityScore weatherPersonalityScore
    ) {
        UserWeatherPersonalityTypeId userWeatherPersonalityTypeId = UserWeatherPersonalityTypeId.generate();
        return new UserWeatherPersonalityType(
            userWeatherPersonalityTypeId,
            userId,
            code,
            weatherPersonalityScore
        );

    }

    public UserWeatherPersonalityTypeId getId() { return id; }
    public UserId getUserId() { return userId; }
    public WeatherPersonalityCode getWeatherPersonalityCode() { return code; }
    public WeatherPersonalityScore getWeatherPersonalityScore() { return weatherPersonalityScore; }

}

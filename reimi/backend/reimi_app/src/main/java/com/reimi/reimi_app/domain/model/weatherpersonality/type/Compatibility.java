package com.reimi.reimi_app.domain.model.weatherpersonality.type;

public class Compatibility {

    private final WeatherPersonalityCode type;
    private final String message;

    public Compatibility(
        WeatherPersonalityCode type,
        String message
    ) {
        this.type = type;
        this.message = message;
    }

    public WeatherPersonalityCode getType() {
        return type;
    }

    public String getMessage() {
        return message;
    }
}

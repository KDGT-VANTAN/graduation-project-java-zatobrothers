package com.reimi.reimi_app.domain.model.weatherpersonality;

public class WeatherPersonalityType {

    private final WeatherPersonalityCode code;
    private final String name;
    private final String description;
    private final String imageUrl;

    private WeatherPersonalityType (
        WeatherPersonalityCode code,
        String name,
        String description,
        String imageUrl
    ) {
        this.code = code;
        this.name = name;
        this.description = description;
        this.imageUrl = imageUrl;
    }

    public WeatherPersonalityCode getCode() { return code; }
    public String getName() { return name; }
    public String getDescription() { return description; }
    public String getImageUrl() { return imageUrl; }
}
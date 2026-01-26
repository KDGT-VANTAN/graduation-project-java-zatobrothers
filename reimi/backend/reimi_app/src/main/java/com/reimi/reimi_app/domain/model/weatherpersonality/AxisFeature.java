package com.reimi.reimi_app.domain.model.weatherpersonality;

public class AxisFeature {

    private final WeatherPersonalityAxis axis;
    private final WeatherPersonalityPolarity polarity;
    private final String description;

    public AxisFeature(
        WeatherPersonalityAxis axis,
        WeatherPersonalityPolarity polarity,
        String description
    ) {
        this.axis = axis;
        this.polarity = polarity;
        this.description = description;
    }

    public WeatherPersonalityAxis getAxis() {
        return axis;
    }

    public WeatherPersonalityPolarity getPolarity() {
        return polarity;
    }

    public String getDescription() {
        return description;
    }

}

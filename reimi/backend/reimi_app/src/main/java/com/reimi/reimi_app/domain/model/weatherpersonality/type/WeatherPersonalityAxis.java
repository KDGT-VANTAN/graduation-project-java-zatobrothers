package com.reimi.reimi_app.domain.model.weatherpersonality.type;

public enum WeatherPersonalityAxis {
    SENSITIVITY("感受性"),
    PREPAREDNESS("準備性"),
    ACTIVITY("活動性"),
    MOTIVATION("動機特性");

    private final String label;

    WeatherPersonalityAxis(String label) {
        this.label = label;
    }

    public String getLabel() {
        return label;
    }
}

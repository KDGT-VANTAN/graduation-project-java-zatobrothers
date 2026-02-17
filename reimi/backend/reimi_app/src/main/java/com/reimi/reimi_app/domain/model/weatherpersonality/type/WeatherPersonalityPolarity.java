package com.reimi.reimi_app.domain.model.weatherpersonality.type;

public enum WeatherPersonalityPolarity {
    SENSITIVE("S（高）"),
    NEUTRAL("N（低）"),
    PLANNED("P（計画型）"),
    FLEXIBLE("F（柔軟型）"),
    OUTDOOR("O（アウトドア）"),
    INDOOR("I（インドア）"),
    EMOTIONAL("E（情緒）"),
    RATIONAL("R（実用）");

    private final String label;

    WeatherPersonalityPolarity(String label) {
        this.label = label;
    }

    public String getLabel() {
        return label;
    }
}
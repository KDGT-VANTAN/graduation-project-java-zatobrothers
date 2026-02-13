package com.reimi.reimi_app.domain.model.report.value;

public enum WindDirection {
    NORTH("北"),
    NORTH_EAST("北東"),
    EAST("東"),
    SOUTH_EAST("南東"),
    SOUTH("南"),
    SOUTH_WEST("南西"),
    WEST("西"),
    NORTH_WEST("北西"),
    UNKNOWN("分からない");

    private final String label;

    WindDirection(String label) {
        this.label = label;
    }

    public String getLabel() {
        return label;
    }
}

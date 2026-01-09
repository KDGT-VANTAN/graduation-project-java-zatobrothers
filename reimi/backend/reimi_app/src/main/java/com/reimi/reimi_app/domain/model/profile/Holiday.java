package com.reimi.reimi_app.domain.model.profile;

public enum Holiday {
    WEEKEND("土日"),
    WEEKDAY("平日"),
    IRREGULAR("不定休");

    private final String label;

    Holiday(String label) {
        this.label = label;
    }

    public String getLabel() {
        return label;
    }
}

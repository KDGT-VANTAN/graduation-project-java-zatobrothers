package com.reimi.reimi_app.domain.model.profile;

public enum Alcohol {
    NO("飲まない"),
    SOMETIMES("たまに飲む"),
    YES("飲む");

    private final String label;

    Alcohol(String label) {
        this.label = label;
    }

    public String getLabel() {
        return label;
    }
}

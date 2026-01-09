package com.reimi.reimi_app.domain.model.profile;

public enum Smoking {
    NO("吸わない"),
    SOMETIMES("たまに吸う"),
    YES("吸う");

    private final String label;

    Smoking(String label) {
        this.label = label;
    }

    public String getLabel() {
        return label;
    }
}

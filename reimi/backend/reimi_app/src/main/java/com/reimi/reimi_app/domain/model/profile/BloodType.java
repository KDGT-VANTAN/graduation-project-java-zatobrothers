package com.reimi.reimi_app.domain.model.profile;

public enum BloodType {

    A("A型"),
    B("B型"),
    O("O型"),
    AB("AB型"),
    UNKNOWN("わからない");

    private final String label;

    BloodType(String label) {
        this.label = label;
    }

    public String getLabel() {
        return label;
    }
}

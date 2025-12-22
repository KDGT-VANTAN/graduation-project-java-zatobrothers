package com.reimi.reimi_app.domain.model.user;

public enum Gender {
    MAN("男性"),
    WOMAN("女性"),
    OTHER("その他");

    private final String label;

    Gender(String label) {
        this.label = label;
    }

    public String getLabel() {
        return label;
    }
}
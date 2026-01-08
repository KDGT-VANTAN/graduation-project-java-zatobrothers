package com.reimi.reimi_app.domain.model.profile;

public enum Education {

    HIGH_SCHOOL_GRADUATE("高校卒"),
    JUNIOR_COLLEGE_GRADUATE("短大卒"),
    VOCATIONAL_SCHOOL_GRADUATE("専門卒"),
    TECHNICAL_COLLEGE_GRADUATE("高専卒"),
    UNIVERSITY_GRADUATE("大学卒"),
    GRADUATE_SCHOOL_GRADUATE("大学院卒"),
    OTHER("その他");

    private final String label;

    Education(String label) {
        this.label = label;
    }

    public String getLabel() {
        return label;
    }
}

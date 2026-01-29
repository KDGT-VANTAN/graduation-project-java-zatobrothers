package com.reimi.reimi_app.domain.model.weatherpersonality;

public class WeatherPersonalityScore {

    private int sensitivity;
    private int preparedness;
    private int activity;
    private int motivation;

    public WeatherPersonalityScore() {
        this(0, 0, 0, 0);
    }

    public WeatherPersonalityScore(
        int sensitivity,
        int preparedness,
        int activity,
        int motivation
    ) {
        this.sensitivity = sensitivity;
        this.preparedness = preparedness;
        this.activity = activity;
        this.motivation = motivation;
    }

    public void addSensitivity(int value) {
        sensitivity += value;
    }

    public void addPreparedness(int value) {
        preparedness += value;
    }

    public void addActivity(int value) {
        activity += value;
    }

    public void addMotivation(int value) {
        motivation += value;
    }


    public int sensitivity() {
        return sensitivity;
    }

    public int preparedness() {
        return preparedness;
    }

    public int activity() {
        return activity;
    }

    public int motivation() {
        return motivation;
    }
}

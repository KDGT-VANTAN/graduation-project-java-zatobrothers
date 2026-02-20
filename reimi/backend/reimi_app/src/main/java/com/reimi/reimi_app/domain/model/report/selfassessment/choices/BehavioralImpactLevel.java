package com.reimi.reimi_app.domain.model.report.selfassessment.choices;

public enum BehavioralImpactLevel {

    MAJOR_CHANGE("大きく変えた（予定変更・外出調整など）"),
    MINOR_CHANGE("少し変えた"),
    NO_CHANGE("ほとんど変わらない"),
    WEATHER_INDEPENDENT("むしろ天気に関係なく動く"),
    NO_MOTIVATION("何もしたくなくなった");

    private final String label;

    BehavioralImpactLevel(String label) {
        this.label = label;
    }

    public String getLabel() {
        return label;
    }
}

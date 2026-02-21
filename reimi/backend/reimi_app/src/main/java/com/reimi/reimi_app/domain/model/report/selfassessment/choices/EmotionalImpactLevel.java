package com.reimi.reimi_app.domain.model.report.selfassessment.choices;

public enum EmotionalImpactLevel {

    ELEVATED("気分が上がった"),
    CALM("落ち着いている"),
    SLIGHTLY_DOWN("少しテンションが下がった"),
    DEPRESSED("憂鬱・重たい気分になった"),
    UNSTABLE("そわそわ・不安定になった");

    private final String label;

    EmotionalImpactLevel(String label) {
        this.label = label;
    }

    public String getLabel() {
        return label;
    }
}

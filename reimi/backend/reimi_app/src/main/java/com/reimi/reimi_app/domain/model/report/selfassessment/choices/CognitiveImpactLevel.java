package com.reimi.reimi_app.domain.model.report.selfassessment.choices;

public enum CognitiveImpactLevel {

    POSITIVE_REFRAME("前向きに切り替えるきっかけになった"),
    DEEP_THINKING("物事を深く考える気分になった"),
    NEGATIVE_THINKING("ネガティブな思考が増えた"),
    NO_CHANGE("特に考え方は変わらない"),
    ACTION_ORIENTED("考えるより行動したくなった");

    private final String label;

    CognitiveImpactLevel(String label) {
        this.label = label;
    }

    public String getLabel() {
        return label;
    }
}

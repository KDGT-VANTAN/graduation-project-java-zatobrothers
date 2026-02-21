package com.reimi.reimi_app.domain.model.report.selfassessment;

public enum SelfAssessmentAxis {
    PHYSICAL("身体（生理）"),
    EMOTION("感情（気分）"),
    COGNITION("思考（認知）"),
    BEHAVIOR("行動（選択）"),
    VALUES("価値観（好み）");

    private final String label;

    SelfAssessmentAxis(String label) {
        this.label = label;
    }

    public String getLabel() {
        return label;
    }
}
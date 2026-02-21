package com.reimi.reimi_app.domain.model.report.selfassessment.choices;

public enum PhysicalImpactLevel {

    VERY_POSITIVE("とても良い影響があった（体が軽い・調子が良い）"),
    SLIGHTLY_POSITIVE("少し良い影響があった"),
    NO_IMPACT("ほとんど影響はない"),
    SLIGHTLY_NEGATIVE("少し不調を感じた（だるさ・眠気など）"),
    VERY_NEGATIVE("明確に不調が出た（頭痛・関節・気圧反応など）");

    private final String label;

    PhysicalImpactLevel(String label) {
        this.label = label;
    }

    public String getLabel() {
        return label;
    }
}

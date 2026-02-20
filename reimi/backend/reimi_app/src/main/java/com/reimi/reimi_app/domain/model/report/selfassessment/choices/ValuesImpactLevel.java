package com.reimi.reimi_app.domain.model.report.selfassessment.choices;

public enum ValuesImpactLevel {

    ENJOYMENT("今日の雰囲気として楽しんだ"),
    EMPATHY("自分の気分と重ねて感じた"),
    PRACTICAL("行動を決めるための参考にした"),
    NEUTRAL("あまり意識しなかった"),
    ANNOYED("正直、邪魔に感じた");

    private final String label;

    ValuesImpactLevel(String label) {
        this.label = label;
    }

    public String getLabel() {
        return label;
    }
}

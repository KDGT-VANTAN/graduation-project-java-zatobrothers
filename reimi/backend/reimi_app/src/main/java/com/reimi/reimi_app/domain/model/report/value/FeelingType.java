package com.reimi.reimi_app.domain.model.report.value;

public enum FeelingType {

    VERY_COLD("極寒"),
    COLD("寒い"),
    COMFORTABLE("ちょうどいい"),
    WARM("暖かい"),
    NOT_APPLICABLE("あてはまらない");

    private final String label;

    FeelingType(String label) {
        this.label = label;
    }

    public String getLabel() {
        return label;
    }

}
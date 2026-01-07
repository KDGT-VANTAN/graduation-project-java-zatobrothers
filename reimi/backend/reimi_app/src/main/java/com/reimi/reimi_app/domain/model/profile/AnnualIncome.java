package com.reimi.reimi_app.domain.model.profile;

public enum AnnualIncome {
    UNDER_2M("200万円未満"),
    BETWEEN_2M_TO_4M("200万~400万円"),
    BETWEEN_4M_TO_6M("400万~600万円"),
    BETWEEN_6M_TO_8M("600万~800万円"),
    BETWEEN_8M_TO_10M("800万~1000万円"),
    BETWEEN_10M_TO_15M("1000万~1500万円"),
    BETWEEN_15M_TO_20M("1500万~2000万円"),
    BETWEEN_20M_TO_30M("2000万~3000万円"),
    OVER_30M("3000万円以上");

    private final String label;

    AnnualIncome(String label) {
        this.label = label;
    }

    public String getLabel() {
        return label;
    }
}

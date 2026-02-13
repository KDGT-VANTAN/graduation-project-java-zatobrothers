package com.reimi.reimi_app.domain.model.report.value;

public enum ForecastType {

    NO_CHANGE("今と変化なさそう"),
    IMPROVING("回復しそう"),
    DETERIORATING("下り坂になりそう");

    private final String label;

    ForecastType(String label) {
        this.label = label;
    }

    public String getLabel() {
        return label;
    }

}
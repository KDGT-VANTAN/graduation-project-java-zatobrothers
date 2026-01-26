package com.reimi.reimi_app.domain.model.weatherpersonality;

public class BehaviorTendency {

    private final String summary; // 行動の要約
    private final String detail; // 補足文

    public BehaviorTendency(String summary, String detail) {
        this.summary = summary;
        this.detail = detail;
    }

    public String getSummary() {
        return summary;
    }

    public String getDetail() {
        return detail;
    }
}

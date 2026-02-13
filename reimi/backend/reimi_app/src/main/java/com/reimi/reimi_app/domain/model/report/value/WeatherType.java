package com.reimi.reimi_app.domain.model.report.value;

public enum WeatherType {
    CLEAR_STARS("星がはっきり"),
    FAINT_STARS("星がうっすら"),
    NO_STARS("星が見えない"),
    DRIZZLE("ポツポツ"),
    LIGHT_RAIN ("パラパラ"),
    RAIN("サー"),
    HEAVY_RAIN("サーサー");

    private final String label;

    WeatherType(String label) {
        this.label = label;
    }

    public String getLabel() {
        return label;
    }
}
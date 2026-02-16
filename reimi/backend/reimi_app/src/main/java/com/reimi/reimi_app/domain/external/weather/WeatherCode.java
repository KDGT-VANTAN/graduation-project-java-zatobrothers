package com.reimi.reimi_app.domain.external.weather;

public enum WeatherCode {

    SUNNY(100, "晴れ"),
    CLOUDY(200, "くもり"),
    RAIN(300, "雨"),
    SNOW(400, "雪"),
    SLEET(430, "みぞれ"),
    CLEAR(500, "快晴"),
    EXTREME_HEAT(550, "猛暑"),
    PARTLY_CLOUDY(600, "うすぐもり"),
    LIGHT_RAIN(650, "小雨"),
    STORM(850, "大雨・嵐"),
    HEAVY_SNOW(950, "大雪");

    private final int code;
    private final String label;

    WeatherCode(int code, String label) {
        this.code = code;
        this.label = label;
    }

    public int getCode() {
        return code;
    }

    public String getLabel() {
        return label;
    }

    // 数値から対応するEnumを取得
    public static WeatherCode fromCode(int code) {
        for (WeatherCode weatherCode : values()) {
            if (weatherCode.code == code) {
                return weatherCode;
            }
        }
        return null;
    }
}

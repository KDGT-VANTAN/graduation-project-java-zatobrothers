package com.reimi.reimi_app.domain.model.weatherpersonality;

public enum WeatherPersonalityCode {

    SPOE,
    SPOR,
    SPIE,
    SPIR,

    SFOE,
    SFOR,
    SFIE,
    SFIR,

    NPOE,
    NPOR,
    NPIE,
    NPIR,

    NFOE,
    NFOR,
    NFIE,
    NFIR;

    public static WeatherPersonalityCode from(String code) {
        try {
            return WeatherPersonalityCode.valueOf(code);
        } catch (IllegalArgumentException | NullPointerException e) {
            throw new IllegalArgumentException("存在しないタイプコードです");
        }
    }
}
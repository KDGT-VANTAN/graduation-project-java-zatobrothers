package com.reimi.reimi_app.infrastructure.external.ai;

import java.time.LocalDate;

import com.reimi.reimi_app.domain.external.weather.TodayWeather;

public class AiPromptBuilder {

    private static final String TEMPLATE = """
    あなたは天気と人間心理を分析するAIです。

    以下の条件に従って必ずJSONで回答してください。
    - 文字数は30文字以内
    - 必ずテキストのみを返す
    - 余計な文章は書かない
    - 入力情報に基づいて、気をつけるべきポイントを回答する

    入力情報:
    - 気温: %s
    - 天気: %s
    - 日付: %s

    出力形式:テキスト
    """;

    public static String build(TodayWeather todayWeather, LocalDate date) {
        return String.format(
            TEMPLATE,
            todayWeather.temperature(),
            todayWeather.weatherCode().getLabel(),
            date
        );
    }
}

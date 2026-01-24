package com.reimi.reimi_app.domain.model.weatherpersonality;

public enum AnswerChoice {

    STRONGLY_A(2),
    SLIGHTLY_A(1),
    SLIGHTLY_B(-1),
    STRONGLY_B(-2);

    private final int score;

    AnswerChoice(int score) {
        this.score = score;
    }

    public int score() {
        return score;
    }

    public static AnswerChoice from(String value) {
        try {
            return AnswerChoice.valueOf(value);
        } catch (IllegalArgumentException e) {
            throw new IllegalArgumentException("選択肢以外の回答が含まれています");
        }
    }
}
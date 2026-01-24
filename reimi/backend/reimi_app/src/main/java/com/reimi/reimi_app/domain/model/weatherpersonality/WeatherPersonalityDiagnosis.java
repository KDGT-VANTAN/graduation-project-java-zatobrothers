package com.reimi.reimi_app.domain.model.weatherpersonality;

import java.util.List;

public class WeatherPersonalityDiagnosis {

    public WeatherPersonalityScore diagnoseScore(List<AnswerChoice> answers) {

        if (answers.size() != 16) {
            throw new IllegalArgumentException("質問に対する回答数は16問である必要があります");
        }

        WeatherPersonalityScore weatherPersonalityScore = new WeatherPersonalityScore();

        answers.subList(0, 4).forEach(
            answer -> weatherPersonalityScore.addActivity(answer.score())
        );
        answers.subList(4, 8).forEach(
            answer -> weatherPersonalityScore.addPreparedness(answer.score()));
        answers.subList(8, 12).forEach(
            answer -> weatherPersonalityScore.addSensitivity(answer.score())
        );
        answers.subList(12, 16).forEach(
            answer -> weatherPersonalityScore.addMotivation(answer.score())
        );

        return weatherPersonalityScore;
    }

    public WeatherPersonalityCode decideType(
        WeatherPersonalityScore weatherPersonalityScore,
        List<AnswerChoice> answers
    ) {

        char a = weatherPersonalityScore.activity() != 0
            ? (weatherPersonalityScore.activity() > 0 ? 'O' : 'I')
            : (answers.get(3).score() > 0 ? 'O' : 'I');

        char p = weatherPersonalityScore.preparedness() != 0
            ? (weatherPersonalityScore.preparedness() > 0 ? 'P' : 'F')
            : (answers.get(7).score() > 0 ? 'P' : 'F');

        char s = weatherPersonalityScore.sensitivity() != 0
            ? (weatherPersonalityScore.sensitivity() > 0 ? 'S' : 'N')
            : (answers.get(11).score() > 0 ? 'S' : 'N');

        char m = weatherPersonalityScore.motivation() != 0
            ? (weatherPersonalityScore.motivation() > 0 ? 'E' : 'R')
            : (answers.get(15).score() > 0 ? 'E' : 'R');

        String code = "%c%c%c%c".formatted(s, p, a, m);

        return WeatherPersonalityCode.from(code);

    }

}

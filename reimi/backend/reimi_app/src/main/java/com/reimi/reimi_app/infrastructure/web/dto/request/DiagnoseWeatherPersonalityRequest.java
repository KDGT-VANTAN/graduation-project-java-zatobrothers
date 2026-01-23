package com.reimi.reimi_app.infrastructure.web.dto.request;

import com.reimi.reimi_app.domain.model.weatherpersonality.AnswerChoice;

public record DiagnoseWeatherPersonalityRequest(
    AnswerChoice q1Answer,
    AnswerChoice q2Answer,
    AnswerChoice q3Answer,
    AnswerChoice q4Answer,
    AnswerChoice q5Answer,
    AnswerChoice q6Answer,
    AnswerChoice q7Answer,
    AnswerChoice q8Answer,
    AnswerChoice q9Answer,
    AnswerChoice q10Answer,
    AnswerChoice q11Answer,
    AnswerChoice q12Answer,
    AnswerChoice q13Answer,
    AnswerChoice q14Answer,
    AnswerChoice q15Answer,
    AnswerChoice q16Answer
) {}
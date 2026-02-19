package com.reimi.reimi_app.application.command;

import java.util.List;

import com.reimi.reimi_app.domain.model.user.UserId;
import com.reimi.reimi_app.domain.model.weatherpersonality.diagnose.AnswerChoice;

public record DiagnoseWeatherPersonalityCommand(
    UserId userId,
    List<AnswerChoice> answers
) {}

package com.reimi.reimi_app.application.usecase;

import com.reimi.reimi_app.application.command.DiagnoseWeatherPersonalityCommand;
import com.reimi.reimi_app.domain.model.user.UserId;
import com.reimi.reimi_app.domain.model.weatherpersonality.user.UserWeatherPersonalityType;

public interface WeatherPersonalityUseCase {

    void diagnose(DiagnoseWeatherPersonalityCommand command);

    UserWeatherPersonalityType getUserResult();

    void reDiagnose(DiagnoseWeatherPersonalityCommand command);

    UserWeatherPersonalityType getUserResultDetail(UserId userId);
}

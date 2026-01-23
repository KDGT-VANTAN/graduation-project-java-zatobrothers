package com.reimi.reimi_app.application.usecase;

import com.reimi.reimi_app.application.command.DiagnoseWeatherPersonalityCommand;
import com.reimi.reimi_app.domain.model.weatherpersonality.UserWeatherPersonalityType;

public interface WeatherPersonalityUseCase {

    UserWeatherPersonalityType diagnose(DiagnoseWeatherPersonalityCommand command);
}

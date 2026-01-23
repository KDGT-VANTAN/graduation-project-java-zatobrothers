package com.reimi.reimi_app.infrastructure.service;

import org.springframework.stereotype.Service;

import com.reimi.reimi_app.application.command.DiagnoseWeatherPersonalityCommand;
import com.reimi.reimi_app.application.usecase.WeatherPersonalityUseCase;
import com.reimi.reimi_app.domain.model.weatherpersonality.UserWeatherPersonalityType;
import com.reimi.reimi_app.domain.model.weatherpersonality.WeatherPersonalityCode;
import com.reimi.reimi_app.domain.model.weatherpersonality.WeatherPersonalityDiagnosis;
import com.reimi.reimi_app.domain.model.weatherpersonality.WeatherPersonalityScore;
import com.reimi.reimi_app.domain.model.weatherpersonality.WeatherPersonalityType;
import com.reimi.reimi_app.domain.repository.UserWeatherPersonalityTypeRepository;

@Service
public class WeatherPersonalityUseCaseImpl implements WeatherPersonalityUseCase {

    private final UserWeatherPersonalityTypeRepository userWeatherPersonalityTypeRepository;

    public WeatherPersonalityUseCaseImpl(
        UserWeatherPersonalityTypeRepository userWeatherPersonalityTypeRepository
    ) {
        this.userWeatherPersonalityTypeRepository = userWeatherPersonalityTypeRepository;
    }

    @Override
    public UserWeatherPersonalityType diagnose(DiagnoseWeatherPersonalityCommand command) {

        WeatherPersonalityDiagnosis diagnosis = new WeatherPersonalityDiagnosis();

        WeatherPersonalityScore weatherPersonalityScore = diagnosis.diagnoseScore(command.answers());

        WeatherPersonalityCode code = diagnosis.decideType(weatherPersonalityScore, command.answers());

        WeatherPersonalityType type = WeatherPersonalityType.from(code);

        UserWeatherPersonalityType result = UserWeatherPersonalityType.result(
            command.userId(),
            type,
            weatherPersonalityScore
        );

        userWeatherPersonalityTypeRepository.save(result);

        return result;
    }
}

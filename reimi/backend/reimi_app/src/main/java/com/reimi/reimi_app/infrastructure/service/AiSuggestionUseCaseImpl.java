package com.reimi.reimi_app.infrastructure.service;

import java.time.LocalDate;

import org.springframework.stereotype.Service;

import com.reimi.reimi_app.application.exception.client.ResourceNotFoundException;
import com.reimi.reimi_app.application.usecase.AiSuggestionUseCase;
import com.reimi.reimi_app.application.usecase.WeatherForecastUseCase;
import com.reimi.reimi_app.domain.external.ai.AiSuggestion;
import com.reimi.reimi_app.domain.external.ai.AiSuggestionPort;
import com.reimi.reimi_app.domain.external.weather.ShortTermForecast;
import com.reimi.reimi_app.domain.external.weather.TodayWeather;
import com.reimi.reimi_app.domain.external.weather.WeatherCode;
import com.reimi.reimi_app.domain.external.weather.WeatherForecast;
import com.reimi.reimi_app.domain.external.weather.WeatherForecastPort;
import com.reimi.reimi_app.domain.model.report.WeatherReport;
import com.reimi.reimi_app.domain.model.user.User;
import com.reimi.reimi_app.domain.model.user.UserId;
import com.reimi.reimi_app.domain.repository.UserRepository;
import com.reimi.reimi_app.domain.repository.WeatherReportRepository;
import com.reimi.reimi_app.infrastructure.external.ai.AiPromptBuilder;
import com.reimi.reimi_app.infrastructure.external.weather.WeatherNewsApiService;
import com.reimi.reimi_app.security.AuthenticatedUserProvider;

@Service
public class AiSuggestionUseCaseImpl implements AiSuggestionUseCase {

    private final AiSuggestionPort aiSuggestionPort;
    private final AuthenticatedUserProvider authenticatedUserProvider;
    private final UserRepository userRepository;
    private final WeatherReportRepository weatherReportRepository;
    private final WeatherForecastUseCase weatherForecastUseCase;
    private final WeatherNewsApiService weatherNewsApiService;

    public AiSuggestionUseCaseImpl(
        AiSuggestionPort aiSuggestionPort,
        AuthenticatedUserProvider authenticatedUserProvider,
        UserRepository userRepository,
        WeatherReportRepository weatherReportRepository,
        WeatherForecastUseCase weatherForecastUseCase,
        WeatherForecastPort weatherForecastPort,
        WeatherNewsApiService weatherNewsApiService
    ) {
        this.aiSuggestionPort = aiSuggestionPort;
        this.authenticatedUserProvider = authenticatedUserProvider;
        this.userRepository = userRepository;
        this.weatherReportRepository = weatherReportRepository;
        this.weatherForecastUseCase = weatherForecastUseCase;
        this.weatherNewsApiService = weatherNewsApiService;
    }

    @Override
    public AiSuggestion generateSuggestion() {

        LocalDate today = LocalDate.now();

        String firebaseUid = authenticatedUserProvider.getFirebaseUid();

        User user = userRepository.findMeByFirebaseUid(firebaseUid)
            .orElseThrow(() -> new ResourceNotFoundException("ユーザー"));

        UserId userId = user.getId();

        WeatherReport userDateWeatherReport = weatherReportRepository.findByUserIdAndDate(userId, today)
            .orElseThrow(() -> new ResourceNotFoundException("ウェザーリポート"));

        WeatherForecast weatherForecast = weatherForecastUseCase
            .getWeatherForecastDetail(
                userDateWeatherReport.getLatitude(),
                userDateWeatherReport.getLongitude()
            );

        // その瞬間の天気
        ShortTermForecast currentWeather = weatherForecast.srfs().get(0);
        // 天気コードを取得
        int code = currentWeather.wx();
        String WeatherIconUrl = weatherNewsApiService.getWeatherIconUrl(code);

        TodayWeather todayWeather = new TodayWeather(
            currentWeather.temp(),
            WeatherCode.fromCode(currentWeather.wx()),
            WeatherIconUrl
        );
        String prompt = AiPromptBuilder.build(todayWeather, today);
        String text = aiSuggestionPort.ask(prompt);
        AiSuggestion output = new AiSuggestion(
            todayWeather,
            text
        );

        return output;
    };
}

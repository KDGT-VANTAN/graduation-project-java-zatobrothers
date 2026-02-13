package com.reimi.reimi_app.application.usecase;

import com.reimi.reimi_app.application.command.report.PostWeatherReportCommand;

public interface WeatherReportUseCase {
    void postWeatherReport(PostWeatherReportCommand command);
}

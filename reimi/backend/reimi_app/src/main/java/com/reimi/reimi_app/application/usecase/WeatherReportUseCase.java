package com.reimi.reimi_app.application.usecase;

import java.time.LocalDate;
import java.util.List;

import com.reimi.reimi_app.application.command.report.PostWeatherReportCommand;
import com.reimi.reimi_app.domain.model.report.WeatherReport;

public interface WeatherReportUseCase {

    void postWeatherReport(PostWeatherReportCommand command);

    List<WeatherReport> getTodayWeatherReportList(LocalDate today);
}

package com.reimi.reimi_app.domain.repository;

import java.time.LocalDate;

import com.reimi.reimi_app.domain.model.report.WeatherReport;
import com.reimi.reimi_app.domain.model.user.UserId;

public interface WeatherReportRepository {

    boolean existsByUserIdAndDate(UserId userId, LocalDate date);

    void save(WeatherReport weatherReport);
}

package com.reimi.reimi_app.infrastructure.persistence.repository.report;

import java.time.LocalDate;
import java.util.UUID;

import org.springframework.data.jpa.repository.JpaRepository;

import com.reimi.reimi_app.infrastructure.persistence.entity.WeatherReportEntity;

public interface JpaWeatherReportRepository extends JpaRepository<WeatherReportEntity, UUID> {
    boolean existsByUserIdAndReportDate(UUID userId, LocalDate reportDate);
}

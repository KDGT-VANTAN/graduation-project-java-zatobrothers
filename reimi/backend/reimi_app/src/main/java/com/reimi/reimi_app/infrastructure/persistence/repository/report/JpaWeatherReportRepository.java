package com.reimi.reimi_app.infrastructure.persistence.repository.report;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

import org.springframework.data.jpa.repository.JpaRepository;

import com.reimi.reimi_app.infrastructure.persistence.entity.WeatherReportEntity;

public interface JpaWeatherReportRepository extends JpaRepository<WeatherReportEntity, UUID> {
    boolean existsByUserIdAndReportDate(UUID userId, LocalDate date);

    List<WeatherReportEntity> findByReportDate(LocalDate date);

    Optional<WeatherReportEntity> findByUserIdAndReportDate(UUID userId, LocalDate date);
}

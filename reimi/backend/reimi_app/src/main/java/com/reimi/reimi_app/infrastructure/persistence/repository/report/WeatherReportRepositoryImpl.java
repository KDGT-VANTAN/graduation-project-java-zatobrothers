package com.reimi.reimi_app.infrastructure.persistence.repository.report;

import java.time.LocalDate;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.reimi.reimi_app.domain.model.report.WeatherReport;
import com.reimi.reimi_app.domain.model.user.UserId;
import com.reimi.reimi_app.domain.repository.WeatherReportRepository;
import com.reimi.reimi_app.infrastructure.persistence.mapper.WeatherReportMapper;

@Repository
public class WeatherReportRepositoryImpl implements WeatherReportRepository {

    private final JpaWeatherReportRepository jpaWeatherReportRepository;

    public WeatherReportRepositoryImpl(
        JpaWeatherReportRepository jpaWeatherReportRepository
    ) {
        this.jpaWeatherReportRepository = jpaWeatherReportRepository;
    }

    @Override
    public boolean existsByUserIdAndDate(UserId userId, LocalDate date) {
        return jpaWeatherReportRepository.existsByUserIdAndReportDate(
            userId.value(),
            date
        );
    }

    @Override
    public void save(WeatherReport weatherReport) {
        jpaWeatherReportRepository.save(WeatherReportMapper.toEntity(weatherReport));
    }

    @Override
    public List<WeatherReport> findByDate(LocalDate date) {
        return jpaWeatherReportRepository
            .findByReportDate(date)
            .stream()
            .map(WeatherReportMapper::toDomain)
            .toList();
    }

}

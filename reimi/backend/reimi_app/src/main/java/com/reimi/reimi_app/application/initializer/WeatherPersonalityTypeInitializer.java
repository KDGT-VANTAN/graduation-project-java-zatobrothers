package com.reimi.reimi_app.application.initializer;

import org.springframework.boot.ApplicationRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.reimi.reimi_app.domain.model.weatherpersonality.WeatherPersonalityType;
import com.reimi.reimi_app.domain.repository.WeatherPersonalityTypeRepository;

@Configuration
public class WeatherPersonalityTypeInitializer {
    @Bean
    ApplicationRunner initializeWeatherPersonalityTypes(
        WeatherPersonalityTypeRepository weatherPersonalityTypeRepository
    ) {
        return arg -> {
            for(WeatherPersonalityType weatherPersonalityType : WeatherPersonalityType.values()) {
                if (weatherPersonalityTypeRepository.findByCode(weatherPersonalityType.getCode()).isEmpty()) {
                    weatherPersonalityTypeRepository.save(weatherPersonalityType);
                }
            }
        };
    }
}

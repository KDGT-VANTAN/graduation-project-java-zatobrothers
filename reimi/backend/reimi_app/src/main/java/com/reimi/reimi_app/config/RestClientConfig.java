package com.reimi.reimi_app.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.client.RestClient;

import com.reimi.reimi_app.infrastructure.external.weather.WeatherApiProperties;

@Configuration
public class RestClientConfig {

    @Bean
    public RestClient weatherNewsRestClient(WeatherApiProperties properties) {
        return RestClient.builder()
                .baseUrl(properties.getBaseUrl())
                .defaultHeader("X-API-Key", properties.getApiKey())
                .build();
    }

}
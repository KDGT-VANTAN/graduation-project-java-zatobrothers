package com.reimi.reimi_app.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.reimi.reimi_app.infrastructure.external.ai.GeminiApiProperties;

import com.google.genai.Client;

@Configuration
public class GeminiApiConfig {

    @Bean
    public Client geminiClient(GeminiApiProperties properties) {
        return Client.builder()
            .apiKey(properties.getApiKey())
            .build();
    }
}
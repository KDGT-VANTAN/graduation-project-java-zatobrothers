package com.reimi.reimi_app.config;

import io.github.cdimascio.dotenv.Dotenv;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Bean;

@Configuration
public class EnvConfig {

    private final Dotenv dotenv;

    public EnvConfig() {
        this.dotenv = Dotenv
            .configure()
            .ignoreIfMissing()
            .load();
    }

    @Bean
    public Dotenv dotenv() {
        return this.dotenv;
    }
}
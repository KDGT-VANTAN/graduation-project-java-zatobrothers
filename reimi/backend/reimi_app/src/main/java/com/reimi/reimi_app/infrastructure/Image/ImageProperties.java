package com.reimi.reimi_app.infrastructure.Image;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;

@Component
@ConfigurationProperties(prefix = "app.image")
@Getter
@Setter
public class ImageProperties {
    private String baseUrl;
}

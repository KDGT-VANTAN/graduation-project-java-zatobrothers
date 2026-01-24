package com.reimi.reimi_app.infrastructure.Image;

import org.springframework.stereotype.Component;

import com.reimi.reimi_app.application.service.ImageUrlResolver;

@Component
public class ConfigBasedImageUrlResolver implements ImageUrlResolver {

    private final ImageProperties properties;

    public ConfigBasedImageUrlResolver(
        ImageProperties properties
    ) {
        this.properties = properties;
    }

    @Override
    public String resolve(String imagePath) {
        return properties.getBaseUrl() + imagePath;
    }
}

package com.reimi.reimi_app.infrastructure.external.weather;

import org.springframework.stereotype.Component;

@Component
public class WeatherNewsApiService {

    private final WeatherApiProperties properties;

    public WeatherNewsApiService(
        WeatherApiProperties properties
    ) {
        this.properties = properties;
    }

    public String getWeatherIconUrl(int wx) {

        String iconUrl = properties.getIconUrl();
        String strWx = String.valueOf(wx);
        String url = iconUrl.replace("{wx}", strWx);

        return url;
    }
}

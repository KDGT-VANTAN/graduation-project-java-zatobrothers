package com.reimi.reimi_app.domain.model.report;

import com.reimi.reimi_app.domain.model.report.value.MediaType;

public class WeatherMedia {

    private final WeatherMediaId id;
    private final MediaType mediaType;
    private final String url;

    private WeatherMedia(
        WeatherMediaId id,
        MediaType mediaType,
        String url
    ) {
        this.id = id;
        this.mediaType = mediaType;
        this.url = url;
    }

    public static WeatherMedia create(
        MediaType mediaType,
        String url
    ) {
        WeatherMediaId weatherMediaId = WeatherMediaId.generate();
        return new WeatherMedia(
            weatherMediaId,
            mediaType,
            url
        );
    }

    public WeatherMediaId getId() { return id; }
    public MediaType getMediaType() { return mediaType; }
    public String getUrl() { return url; }
}

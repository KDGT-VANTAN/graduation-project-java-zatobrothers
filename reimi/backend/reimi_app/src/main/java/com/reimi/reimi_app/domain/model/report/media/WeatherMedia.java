package com.reimi.reimi_app.domain.model.report.media;

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

    public static WeatherMedia reconstruct(
        WeatherMediaId id,
        MediaType mediaType,
        String url
    ) {
        return new WeatherMedia(
            id,
            mediaType,
            url
        );
    }

    public WeatherMediaId getId() { return id; }
    public MediaType getMediaType() { return mediaType; }
    public String getUrl() { return url; }

     // リポートの天気写真を署名URLとして管理したいためシリアライズ対象外とする
    private transient String signedWeatherPhotoUrl;

    public String getSignedWeatherPhotoUrl() { return signedWeatherPhotoUrl; }
    public void setSignedWeatherPhotoUrl(String signedWeatherPhotoUrl) { this.signedWeatherPhotoUrl = signedWeatherPhotoUrl; }
}

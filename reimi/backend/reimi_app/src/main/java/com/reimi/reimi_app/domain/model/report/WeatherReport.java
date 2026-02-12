package com.reimi.reimi_app.domain.model.report;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import com.reimi.reimi_app.domain.model.report.value.FeelingType;
import com.reimi.reimi_app.domain.model.report.value.ForecastType;
import com.reimi.reimi_app.domain.model.report.value.WeatherType;
import com.reimi.reimi_app.domain.model.report.value.WindDirection;
import com.reimi.reimi_app.domain.model.user.UserId;

public class WeatherReport {

    private final WeatherReportId id;
    private final UserId userId;
    private final String comment;
    private final WeatherType weather;
    private final FeelingType feeling;
    private final ForecastType forecast;
    private final BigDecimal latitude;
    private final BigDecimal longitude;
    private final List<WeatherMedia> mediaList;

    private WeatherObservation observation;

    private WeatherReport(
        WeatherReportId id,
        UserId userId,
        String comment,
        WeatherType weather,
        FeelingType feeling,
        ForecastType forecast,
        BigDecimal latitude,
        BigDecimal longitude,
        List<WeatherMedia> mediaList
    ) {
        if (mediaList == null || mediaList.isEmpty()) {
            throw new IllegalArgumentException(
                "1つ以上の写真を追加してください。"
            );
        }
        this.id = id;
        this.userId = userId;
        this.comment = comment;
        this.weather = weather;
        this.feeling = feeling;
        this.forecast = forecast;
        this.latitude = latitude;
        this.longitude = longitude;
        this.mediaList = new ArrayList<>(mediaList);
    }

    public static WeatherReport create(
        UserId userId,
        String comment,
        WeatherType weather,
        FeelingType feeling,
        ForecastType forecast,
        BigDecimal latitude,
        BigDecimal longitude,
        List<WeatherMedia> mediaList
    ) {
        WeatherReportId weatherReportId = WeatherReportId.generate();

        return new WeatherReport(
            weatherReportId,
            userId,
            comment,
            weather,
            feeling,
            forecast,
            latitude,
            longitude,
            mediaList
        );
    }

    public void addObservation(
        BigDecimal temperature,
        BigDecimal humidity,
        BigDecimal pressure,
        BigDecimal windSpeed,
        WindDirection windDirection
    ) {
        this.observation = WeatherObservation.create(
            temperature,
            humidity,
            pressure,
            windSpeed,
            windDirection
        );
    }

    public WeatherReportId getId() { return id; }
    public UserId getUserId() { return userId; }
    public String getComment() { return comment; }
    public WeatherType getWeather() { return weather; }
    public FeelingType getFeeling() { return feeling; }
    public ForecastType getForecast() { return forecast; }
    public BigDecimal getLatitude() { return latitude; }
    public BigDecimal getLongitude() { return longitude; }
    public List<WeatherMedia> getMedia() { return mediaList; }
    public List<WeatherMedia> getMediaList() { return Collections.unmodifiableList(mediaList); }
    public WeatherObservation getObservation() { return observation; }

}

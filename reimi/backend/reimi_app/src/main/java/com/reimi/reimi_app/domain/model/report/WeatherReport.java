package com.reimi.reimi_app.domain.model.report;

import java.math.BigDecimal;

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
    private final WeatherMedia media;

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
        WeatherMedia media
    ) {
        this.id = id;
        this.userId = userId;
        this.comment = comment;
        this.weather = weather;
        this.feeling = feeling;
        this.forecast = forecast;
        this.latitude = latitude;
        this.longitude = longitude;
        this.media = media;
    }

    public static WeatherReport create(
        UserId userId,
        String comment,
        WeatherType weather,
        FeelingType feeling,
        ForecastType forecast,
        BigDecimal latitude,
        BigDecimal longitude,
        WeatherMedia media
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
            media
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
    public WeatherMedia getMedia() { return media; }
    public WeatherObservation getObservation() { return observation; }

}

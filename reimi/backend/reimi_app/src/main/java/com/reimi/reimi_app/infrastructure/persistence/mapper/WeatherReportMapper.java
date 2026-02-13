package com.reimi.reimi_app.infrastructure.persistence.mapper;

import com.reimi.reimi_app.domain.model.report.WeatherMedia;
import com.reimi.reimi_app.domain.model.report.WeatherReport;
import com.reimi.reimi_app.infrastructure.persistence.embeddable.WeatherObservationEmbeddable;
import com.reimi.reimi_app.infrastructure.persistence.entity.WeatherMediaEntity;
import com.reimi.reimi_app.infrastructure.persistence.entity.WeatherReportEntity;

public class WeatherReportMapper {

    public static WeatherReportEntity toEntity(WeatherReport weatherReport) {

        WeatherReportEntity entity = new WeatherReportEntity();
            entity.setId(weatherReport.getId().value());
            entity.setUserId(weatherReport.getUserId().value());
            entity.setComment(weatherReport.getComment());
            entity.setWeatherType(weatherReport.getWeather());
            entity.setFeelingType(weatherReport.getFeeling());
            entity.setForecastType(weatherReport.getForecast());
            entity.setLatitude(weatherReport.getLatitude());
            entity.setLongitude(weatherReport.getLongitude());

        WeatherMedia media = weatherReport.getMedia();

        WeatherMediaEntity mediaEntity = new WeatherMediaEntity();
            mediaEntity.setId(media.getId().value());
            mediaEntity.setMediaType(media.getMediaType());
            mediaEntity.setUrl(media.getUrl());

        entity.setMedia(mediaEntity);

        if (weatherReport.getObservation() != null) {
            WeatherObservationEmbeddable embeddable = new WeatherObservationEmbeddable();
                new WeatherObservationEmbeddable(
                    weatherReport.getObservation().getTemperature(),
                    weatherReport.getObservation().getHumidity(),
                    weatherReport.getObservation().getPressure(),
                    weatherReport.getObservation().getWindSpeed(),
                    weatherReport.getObservation().getWindDirection()
                );

            entity.setObservation(embeddable);
        }

        return entity;
    }
}

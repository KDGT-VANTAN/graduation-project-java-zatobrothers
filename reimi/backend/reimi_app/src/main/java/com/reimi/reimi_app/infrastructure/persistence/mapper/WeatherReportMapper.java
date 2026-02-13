package com.reimi.reimi_app.infrastructure.persistence.mapper;

import com.reimi.reimi_app.domain.model.report.WeatherMedia;
import com.reimi.reimi_app.domain.model.report.WeatherMediaId;
import com.reimi.reimi_app.domain.model.report.WeatherObservation;
import com.reimi.reimi_app.domain.model.report.WeatherReport;
import com.reimi.reimi_app.domain.model.report.WeatherReportId;
import com.reimi.reimi_app.domain.model.user.UserId;
import com.reimi.reimi_app.infrastructure.persistence.embeddable.WeatherObservationEmbeddable;
import com.reimi.reimi_app.infrastructure.persistence.entity.WeatherMediaEntity;
import com.reimi.reimi_app.infrastructure.persistence.entity.WeatherReportEntity;

public class WeatherReportMapper {

    public static WeatherReport toDomain(WeatherReportEntity entity) {

        WeatherObservation observation = null;

        if (entity.getObservation() != null) {
            observation = WeatherObservation.reconstruct(
                entity.getObservation().getTemperature(),
                entity.getObservation().getHumidity(),
                entity.getObservation().getPressure(),
                entity.getObservation().getWindSpeed(),
                entity.getObservation().getWindDirection()
            );
        }

        WeatherMedia media = WeatherMedia.reconstruct(
            new WeatherMediaId(entity.getMedia().getId()),
            entity.getMedia().getMediaType(),
            entity.getMedia().getUrl()
        );

        return WeatherReport.reconstruct(
            new WeatherReportId(entity.getId()),
            new UserId(entity.getUserId()),
            entity.getComment(),
            entity.getWeatherType(),
            entity.getFeelingType(),
            entity.getForecastType(),
            entity.getLatitude(),
            entity.getLongitude(),
            entity.getCreatedAt(),
            media,
            observation
        );
    }

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
            mediaEntity.setWeatherReport(entity);

        entity.setMedia(mediaEntity);

        if (weatherReport.getObservation() != null) {
            WeatherObservationEmbeddable embeddable =
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

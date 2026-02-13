package com.reimi.reimi_app.domain.model.report;

import java.math.BigDecimal;

import com.reimi.reimi_app.domain.model.report.value.WindDirection;

public class WeatherObservation {

    private final BigDecimal temperature;
    private final BigDecimal humidity;
    private final BigDecimal pressure;
    private final BigDecimal windSpeed;
    private final WindDirection windDirection;

    private WeatherObservation(
        BigDecimal temperature,
        BigDecimal humidity,
        BigDecimal pressure,
        BigDecimal windSpeed,
        WindDirection windDirection
    ) {
        this.temperature = temperature;
        this.humidity = humidity;
        this.pressure = pressure;
        this.windSpeed = windSpeed;
        this.windDirection = windDirection;
    }

    public static WeatherObservation create(
        BigDecimal temperature,
        BigDecimal humidity,
        BigDecimal pressure,
        BigDecimal windSpeed,
        WindDirection windDirection
    ) {
        if (temperature == null
            && humidity == null
            && pressure == null
            && windSpeed == null
            && windDirection == null) {
            throw new IllegalArgumentException(
                "観測値を登録する場合は、気温・湿度・気圧・風速・風向のいずれかを入力してください。"
            );
        }
        return new WeatherObservation(
            temperature,
            humidity,
            pressure,
            windSpeed,
            windDirection
        );
    }

    public static WeatherObservation reconstruct(
        BigDecimal temperature,
        BigDecimal humidity,
        BigDecimal pressure,
        BigDecimal windSpeed,
        WindDirection windDirection
    ) {
        return new WeatherObservation(
            temperature,
            humidity,
            pressure,
            windSpeed,
            windDirection
        );
    }

    public BigDecimal getTemperature() { return temperature; }
    public BigDecimal getHumidity() { return humidity; }
    public BigDecimal getPressure() { return pressure; }
    public BigDecimal getWindSpeed() { return windSpeed; }
    public WindDirection getWindDirection() { return windDirection; }
}
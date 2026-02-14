package com.reimi.reimi_app.application.exception.client;

public class WeatherApiException extends RuntimeException {

    private final String code;

    public WeatherApiException(String code, String message) {
        super(message);
        this.code = code;
    }

    public WeatherApiException(String code, String message, Throwable cause) {
        super(message, cause);
        this.code = code;
    }

    public String getCode() {
        return code;
    }
}

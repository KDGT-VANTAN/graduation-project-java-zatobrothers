package com.reimi.reimi_app.infrastructure.external.weather;

import java.io.IOException;
import java.io.InputStream;
import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

import org.springframework.core.ParameterizedTypeReference;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestClient;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.reimi.reimi_app.application.exception.client.WeatherApiException;
import com.reimi.reimi_app.domain.external.weather.MediumTermForecast;
import com.reimi.reimi_app.domain.external.weather.ShortTermForecast;
import com.reimi.reimi_app.domain.external.weather.WeatherForecast;
import com.reimi.reimi_app.domain.external.weather.WeatherForecastPort;
import com.reimi.reimi_app.infrastructure.external.weather.dto.response.GetWeatherNewsApiResponse;
import com.reimi.reimi_app.infrastructure.external.weather.dto.response.WxDateResponse;


@Component
public class WeatherNewsApiClient implements WeatherForecastPort {

    private final RestClient restClient;

    public WeatherNewsApiClient(
        RestClient weatherNewsRestClient
    ) {
        this.restClient = weatherNewsRestClient;
    }

    @Override
    public WeatherForecast fetch(BigDecimal latitude, BigDecimal longitude) {

        ObjectMapper objectMapper = new ObjectMapper();

        Map<String, Object> responseMap = restClient.get()
                .uri(uriBuilder -> uriBuilder
                        .path("")
                        .queryParam("lat", latitude)
                        .queryParam("lon", longitude)
                        .build())
                .retrieve()
                .onStatus(
                    status -> status.isError(),
                    (request, response) -> {

                        try (InputStream bodyStream = response.getBody()) {

                            Map<String, Object> errorBody =
                                    objectMapper.readValue(
                                            bodyStream,
                                            new TypeReference<>() {}
                                    );

                            if (errorBody.containsKey("errors")) {

                                @SuppressWarnings("unchecked")
                                List<Map<String, Object>> errors =
                                        (List<Map<String, Object>>) errorBody.get("errors");

                                Map<String, Object> firstError = errors.get(0);
                                String code = String.valueOf(firstError.get("code"));
                                String message = String.valueOf(firstError.get("message"));

                                throw new WeatherApiException(code, message);
                            }

                            throw new WeatherApiException(
                                    String.valueOf(response.getStatusCode().value()),
                                    "External API error"
                            );

                        } catch (IOException e) {
                            throw new WeatherApiException(
                                "UNKNOWN",
                                "Error parsing API error response"
                            );
                        }
                    }
                )
                .body(new ParameterizedTypeReference<Map<String, Object>>() {});

        GetWeatherNewsApiResponse responseDto =
            objectMapper.convertValue(responseMap, GetWeatherNewsApiResponse.class);

        WxDateResponse wxData = responseDto.wxdata().get(0);

        List<ShortTermForecast> shortTermForecasts =
            wxData.srf().stream()
                .map(s -> new ShortTermForecast(
                        s.date(),
                        s.temp(),
                        s.wx()
                ))
                .toList();

        List<MediumTermForecast> mediumTermForecasts =
            wxData.mrf().stream()
                .map(m -> new MediumTermForecast(
                        m.date(),
                        m.maxtemp(),
                        m.mintemp(),
                        m.pop(),
                        m.wx()
                ))
                .toList();

        return new WeatherForecast(
            wxData.lat(),
            wxData.lon(),
            shortTermForecasts,
            mediumTermForecasts
        );
    }

}

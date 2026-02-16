package com.reimi.reimi_app.infrastructure.web.controller.v1;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.reimi.reimi_app.application.usecase.AiSuggestionUseCase;
import com.reimi.reimi_app.domain.external.ai.AiSuggestion;
import com.reimi.reimi_app.infrastructure.web.dto.response.GetAiSuggestionResponse;
import com.reimi.reimi_app.infrastructure.web.openapi.aisuggestion.GetAiSuggestionApi;

import io.swagger.v3.oas.annotations.tags.Tag;

@RestController
@Tag(name = "AiSuggestion", description = "AI提案関連のAPI")
public class AiSuggestionController extends ApiV1Controller {

    private final AiSuggestionUseCase aiSuggestionUseCase;

    public AiSuggestionController(
        AiSuggestionUseCase aiSuggestionUseCase
    ) {
        this.aiSuggestionUseCase = aiSuggestionUseCase;
    }

    @GetMapping("/suggestions")
    @GetAiSuggestionApi
    public ResponseEntity<GetAiSuggestionResponse> getAiSuggestion() {

        AiSuggestion output = aiSuggestionUseCase.generateSuggestion();

        GetAiSuggestionResponse response =
            new GetAiSuggestionResponse(
                output.todayWeather().temperature(),
                output.todayWeather().weatherCode(),
                output.todayWeather().WeatherIconUrl(),
                output.text()
            );

        return ResponseEntity.ok(response);
    }
}

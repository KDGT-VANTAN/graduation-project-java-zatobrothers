package com.reimi.reimi_app.infrastructure.external.ai;

import com.google.genai.types.GenerateContentResponse;
import com.reimi.reimi_app.domain.external.ai.AiSuggestionPort;

import org.springframework.stereotype.Component;

import com.google.genai.Client;

@Component
public class GeminiApiClient implements AiSuggestionPort {

    private final Client client;
    private final GeminiApiProperties properties;

    public GeminiApiClient(
        Client geminiClient,
        GeminiApiProperties properties
    ) {
        this.client = geminiClient;
        this.properties = properties;
    }

    @Override
    public String ask(String prompt) {

        // Geminiモデルを取得
        String model = properties.getModel();

        GenerateContentResponse response =
            client.models.generateContent(
                model,
                prompt,
                null);

        String text = response.text();

        return text;
    }
}

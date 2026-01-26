package com.reimi.reimi_app.infrastructure.web.dto.request;

import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.NotBlank;

@Schema(description = "デバイストークン登録用リクエスト")
public record RegisterDeviceTokenRequest(

    @NotBlank(message = "デバイストークンは必須です")
    @Schema(description = "デバイストークン", example = "eYxZzP1xQZK:APA91bF8QJm3yZf2k1H9lRk5...")
    String token
) {}
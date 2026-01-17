package com.reimi.reimi_app.infrastructure.web.dto.request;

import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.NotBlank;

public record SendMessageRequest(

    @NotBlank(message = "メッセージは必須です")
    @Schema(description = "テキストメッセージ", example = "よろしくお願いします！")
    String text

) {}

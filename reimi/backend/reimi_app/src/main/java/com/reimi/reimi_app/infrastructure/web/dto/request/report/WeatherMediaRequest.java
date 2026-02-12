package com.reimi.reimi_app.infrastructure.web.dto.request.report;

import com.reimi.reimi_app.domain.model.report.value.MediaType;

import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;

@Schema(description = "ウェザーリポートに追加するメディア情報用リクエスト")
public record WeatherMediaRequest(

    @NotNull(message = "メディアタイプは必須です")
    @Schema(description = "メディアタイプ", example = "IMAGE")
    MediaType mediaType,

    @NotBlank(message = "URLは必須です")
    @Schema(description = "メディアのURL", example = "https://example.com/weather.jpg")
    String url
) {}
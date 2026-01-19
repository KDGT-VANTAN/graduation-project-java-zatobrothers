package com.reimi.reimi_app.infrastructure.web.dto.request;

import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.NotBlank;

@Schema(description = "メッセージ送信用リクエスト")
public record SendRainbowLikeRequest(

    @NotBlank(message = "メッセージは必須です")
    @Schema(description = "特別なメッセージ", example = "プロフィール見て気になって、特別ないいねしました！！")
    String message

) {}
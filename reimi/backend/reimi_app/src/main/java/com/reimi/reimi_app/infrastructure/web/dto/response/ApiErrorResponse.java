package com.reimi.reimi_app.infrastructure.web.dto.response;

import java.util.Map;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(description = "共通エラーレスポンス")
public record ApiErrorResponse (

    @Schema(description = "コード")
    String code,

    @Schema(description = "エラーメッセージ")
    String message,

    @Schema(description = "詳細内容（主にバリデーションエラー）")
    Map<String, String> details

) {}

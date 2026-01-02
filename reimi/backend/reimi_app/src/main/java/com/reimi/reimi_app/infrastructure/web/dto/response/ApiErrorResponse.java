package com.reimi.reimi_app.infrastructure.web.dto.response;

import java.util.Map;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(description = "共通エラーレスポンス")
public record ApiErrorResponse (

    @Schema(description = "コード", type = "string")
    String code,

    @Schema(description = "エラーメッセージ", type = "string")
    String message,

    @Schema(description = "詳細内容（主にバリデーションエラー）", type = "string")
    Map<String, String> details

) {}

package com.reimi.reimi_app.infrastructure.web.dto.response;

import java.time.OffsetDateTime;
import java.util.UUID;

import com.reimi.reimi_app.domain.model.report.value.MediaType;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(description = "ウェザーリポート一覧用レスポンス")
public record GetWeatherReportListResponse (

    @Schema(description = "ウェザーリポートID", example = "fb3cd942-7fb2-4aaa-a67c-520dc969ba4a")
    UUID id,

    @Schema(description = "ユーザーID", example = "d60b00b3-08fc-4158-bbea-a323fca08f8a")
    UUID userId,

    @Schema(description = "コメント", example = "今日は少し寒いけど気持ちがいいです")
    String comment,

    @Schema(description = "メディアタイプ", example = "IMAGE")
    MediaType mediaType,

    @Schema(description = "天気の写真URL")
    String url,

    @Schema(description = "作成日時", example = "2026-02-13 10:02:09.12324+00")
    OffsetDateTime createdAt

) {}

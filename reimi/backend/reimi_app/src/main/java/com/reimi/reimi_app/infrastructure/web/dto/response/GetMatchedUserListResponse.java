package com.reimi.reimi_app.infrastructure.web.dto.response;

import java.util.UUID;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(description = "マッチング成立したユーザー一覧取得用レスポンス")
public record GetMatchedUserListResponse (

        @Schema(description = "ユーザーID", example = "5bf5eb52-c5fb-4a4c-b6e3-25e53c28bf93")
        UUID id,

        @Schema(description = "メイン写真URL")
        String mainPhotoUrl
) {}
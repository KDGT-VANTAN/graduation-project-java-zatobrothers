package com.reimi.reimi_app.infrastructure.web.dto.response;

import java.util.Map;
import java.util.UUID;

import com.reimi.reimi_app.domain.model.item.ItemTypeCode;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(description = "ユーザーのアカウント詳細情報取得用レスポンス")
public record UserAccountDetailResponse (

        @Schema(description = "ユーザーID", example = "5bf5eb52-c5fb-4a4c-b6e3-25e53c28bf93")
        UUID id,

        @Schema(description = "名前", example = "山田 太郎")
        String name,

        @Schema(description = "メイン写真URL")
        String mainPhotoUrl,

        @Schema(description = "タイプコード", example = "SPOE")
        String typeCode,

        @Schema(description = "タイプ名", example = "トレーニーラッコ")
        String typeName,

        @Schema(description = "タイプイメージ画像URL", example = "http://localhost:8080/images/weather-personalities/トレーニーラッコ_イメージ画像.png")
        String typeImageUrl,

        @Schema(
            description = "ユーザーのアイテム所持数",
            example = """
            {
                "RAINBOW_LIKE": 3
            }
            """
        )
        Map<ItemTypeCode, Integer> items
) {}
package com.reimi.reimi_app.infrastructure.web.dto.response;

import java.time.LocalDate;
import java.util.UUID;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(description = "ユーザー一覧取得用レスポンス")
public record GetUserListResponse (

        @Schema(description = "ユーザーID", example = "5bf5eb52-c5fb-4a4c-b6e3-25e53c28bf93")
        UUID id,

        @Schema(description = "名前", example = "山田 太郎")
        String name,

        @Schema(description = "生年月日", example = "1996-04-18")
        LocalDate birthDate,

        @Schema(description = "居住地", example = "東京都")
        String address,

        @Schema(description = "メイン写真の保存URL", example = "images/users/main_12345.jpg")
        String mainPhotoUrl,

        @Schema(description = "自己紹介文", example = "都内でエンジニアをしています。休日はカフェ巡りやランニングを楽しんでいます。")
        String introduction
) {}

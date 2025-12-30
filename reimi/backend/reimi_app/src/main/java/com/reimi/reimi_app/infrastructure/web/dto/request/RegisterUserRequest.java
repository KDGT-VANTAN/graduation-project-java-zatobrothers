package com.reimi.reimi_app.infrastructure.web.dto.request;

import java.time.LocalDate;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(description = "ユーザー新規登録用リクエスト")
public record RegisterUserRequest (

        @Schema(description = "名前", type = "string", example = "山田 太郎")
        String name,

        @Schema(description = "性別", type = "string", example = "MAN")
        String gender,

        @Schema(description = "生年月日", type = "LocalDate", example = "1996-04-18")
        LocalDate birthDate,

        @Schema(description = "居住地", type = "string", example = "TOKYO")
        String address,

        @Schema(description = "メイン写真の保存URL", type = "string", example = "images/users/main_12345.jpg")
        String mainPhotoUrl,

        @Schema(description = "メールアドレス", type = "string", example = "taro.yamada@example.com")
        String email,

        @Schema(description = "自己紹介文", type = "string", example = "都内でエンジニアをしています。休日はカフェ巡りやランニングを楽しんでいます。")
        String introduction

) {}
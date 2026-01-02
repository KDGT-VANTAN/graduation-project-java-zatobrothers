package com.reimi.reimi_app.infrastructure.web.dto.request;

import java.time.LocalDate;

import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

@Schema(description = "ユーザー新規登録用リクエスト")
public record RegisterUserRequest (

        @NotBlank(message = "名前は必須です")
        @Size(max = 16, message = "名前は16文字以内で入力してください")
        @Schema(description = "名前", example = "山田 太郎")
        String name,

        @NotBlank(message = "性別は必須です")
        @Schema(description = "性別", example = "MAN")
        String gender,

        @NotNull(message = "生年月日は必須です")
        @Schema(description = "生年月日", example = "1996-04-18")
        LocalDate birthDate,

        @NotBlank(message = "居住地は必須です")
        @Schema(description = "居住地", example = "TOKYO")
        String address,

        @NotBlank(message = "メイン写真URLは必須です")
        @Size(max = 255, message = "メイン写真URLは255文字以内で入力してください")
        @Schema(description = "メイン写真の保存URL", example = "images/users/main_12345.jpg")
        String mainPhotoUrl,

        @NotBlank(message = "メールアドレスは必須です")
        @Email(message = "メールアドレスの形式が不正です")
        @Size(max = 64, message = "メールアドレスは64文字以内で入力してください")
        @Schema(description = "メールアドレス", example = "taro.yamada@example.com")
        String email,

        @NotNull(message = "自己紹介文は必須です")
        @Size(min = 20, max = 500, message = "自己紹介文は20文字以上500文字以下で入力してください")
        @Schema(description = "自己紹介文", example = "都内でエンジニアをしています。休日はカフェ巡りやランニングを楽しんでいます。")
        String introduction

) {}
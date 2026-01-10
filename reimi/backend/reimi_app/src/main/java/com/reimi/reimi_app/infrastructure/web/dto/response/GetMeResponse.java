package com.reimi.reimi_app.infrastructure.web.dto.response;

import java.time.LocalDate;
import java.util.UUID;

import com.reimi.reimi_app.domain.model.user.Address;
import com.reimi.reimi_app.domain.model.user.Gender;
import com.reimi.reimi_app.domain.model.user.Status;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(description = "ユーザー取得用レスポンス")
public record GetMeResponse (

        @Schema(description = "ユーザーID", example = "5bf5eb52-c5fb-4a4c-b6e3-25e53c28bf93")
        UUID id,

        @Schema(description = "名前", example = "山田 太郎")
        String name,

        @Schema(description = "性別", example = "MAN")
        Gender gender,

        @Schema(description = "生年月日", example = "1996-04-18")
        LocalDate birthDate,

        @Schema(description = "居住地", example = "TOKYO")
        Address address,

        @Schema(description = "メールアドレス", example = "taro.yamada@example.com")
        String email,

        @Schema(description = "アカウントの状態", example = "ACTIVE")
        Status status
) {}

package com.reimi.reimi_app.infrastructure.web.dto.response;

import java.time.LocalDate;
import java.util.List;
import java.util.UUID;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(description = "ユーザープロフィール取得用レスポンス")
public record UserWithProfileResponse(

    @Schema(description = "ユーザーID", example = "5bf5eb52-c5fb-4a4c-b6e3-25e53c28bf93")
    UUID id,

    @Schema(description = "名前", example = "山田 太郎")
    String name,

    @Schema(description = "性別", example = "MAN")
    String gender,

    @Schema(description = "生年月日", example = "1996-04-18")
    LocalDate birthDate,

    @Schema(description = "居住地", example = "東京都")
    String address,

    @Schema(description = "メイン写真URL")
    String mainPhotoUrl,

    @Schema(description = "自己紹介文")
    String introduction,

    @Schema(description = "身長", example = "160")
    Integer height,

    @Schema(description = "体型", example = "NORMAL")
    String bodyShape,

    @Schema(description = "平均", example = "BETWEEN_2M_TO_4M")
    String annualIncome,

    @Schema(description = "血液型", example = "A")
    String bloodType,

    @Schema(description = "出身地", example = "IWATE")
    String hometown,

    @Schema(description = "コミュニケーション方法", example = "CALL")
    String communicationStyle,

    @Schema(description = "職業", example = "COMPANY_EMPLOYEE")
    String occupation,

    @Schema(description = "学歴", example = "UNIVERSITY_GRADUATE")
    String education,

    @Schema(description = "タバコ", example = "NO")
    String smoking,

    @Schema(description = "お酒", example = "YES")
    String alcohol,

    @Schema(description = "休日", example = "WEEKEND")
    String holiday,

    @Schema(description = "晴れの日にやりたいこと(3つ)", example = "公園でピクニック")
    List<String> sunnyDayHobbies,

    @Schema(description = "雨の日にやりたいこと(3つ)", example = "家で映画・ドラマを一気見")
    List<String> rainyDayHobbies
) {}

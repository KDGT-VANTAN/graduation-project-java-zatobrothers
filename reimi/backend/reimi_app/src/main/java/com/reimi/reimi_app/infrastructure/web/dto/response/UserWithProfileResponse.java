package com.reimi.reimi_app.infrastructure.web.dto.response;

import java.time.LocalDate;
import java.util.List;
import java.util.UUID;

import com.reimi.reimi_app.domain.model.user.Address;
import com.reimi.reimi_app.domain.model.user.Gender;
import com.reimi.reimi_app.domain.model.profile.BodyShape;
import com.reimi.reimi_app.domain.model.profile.AnnualIncome;
import com.reimi.reimi_app.domain.model.profile.BloodType;
import com.reimi.reimi_app.domain.model.profile.Hometown;
import com.reimi.reimi_app.domain.model.profile.CommunicationStyle;
import com.reimi.reimi_app.domain.model.profile.Occupation;
import com.reimi.reimi_app.domain.model.profile.Education;
import com.reimi.reimi_app.domain.model.profile.Smoking;
import com.reimi.reimi_app.domain.model.subphoto.SubPhoto;
import com.reimi.reimi_app.domain.model.profile.Alcohol;
import com.reimi.reimi_app.domain.model.profile.Holiday;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(description = "ユーザープロフィール取得用レスポンス")
public record UserWithProfileResponse(

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

    @Schema(description = "メイン写真URL")
    String mainPhotoUrl,

    @Schema(description = "自己紹介文")
    String introduction,

    @Schema(description = "身長", example = "160")
    Integer height,

    @Schema(description = "体型", example = "NORMAL")
    BodyShape bodyShape,

    @Schema(description = "平均", example = "BETWEEN_2M_TO_4M")
    AnnualIncome annualIncome,

    @Schema(description = "血液型", example = "A")
    BloodType bloodType,

    @Schema(description = "出身地", example = "IWATE")
    Hometown hometown,

    @Schema(description = "コミュニケーション方法", example = "CALL")
    CommunicationStyle communicationStyle,

    @Schema(description = "職業", example = "COMPANY_EMPLOYEE")
    Occupation occupation,

    @Schema(description = "学歴", example = "UNIVERSITY_GRADUATE")
    Education education,

    @Schema(description = "タバコ", example = "NO")
    Smoking smoking,

    @Schema(description = "お酒", example = "YES")
    Alcohol alcohol,

    @Schema(description = "休日", example = "WEEKEND")
    Holiday holiday,

    @Schema(
        description = "晴れの日にやりたいこと（3つ）",
        example = "[\"公園でピクニック\", \"カフェ巡り\", \"ランニング\"]"
    )
    List<String> sunnyDayHobbies,

    @Schema(
        description = "雨の日にやりたいこと（3つ）",
        example = "[\"家で映画\", \"読書\", \"料理\"]"
    )
    List<String> rainyDayHobbies,

    @Schema(
        description = "ユーザープロフィールのサブ写真（6枚までファイルアップロード可能）",
        type = "array",
        format = "binary"
    )
    List<SubPhoto> subPhotos

) {}

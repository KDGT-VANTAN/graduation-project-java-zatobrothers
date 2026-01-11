package com.reimi.reimi_app.infrastructure.web.dto.request;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.reimi.reimi_app.domain.model.profile.Alcohol;
import com.reimi.reimi_app.domain.model.profile.AnnualIncome;
import com.reimi.reimi_app.domain.model.profile.BloodType;
import com.reimi.reimi_app.domain.model.profile.BodyShape;
import com.reimi.reimi_app.domain.model.profile.CommunicationStyle;
import com.reimi.reimi_app.domain.model.profile.Education;
import com.reimi.reimi_app.domain.model.profile.Holiday;
import com.reimi.reimi_app.domain.model.profile.Hometown;
import com.reimi.reimi_app.domain.model.profile.Occupation;
import com.reimi.reimi_app.domain.model.profile.Smoking;
import com.reimi.reimi_app.domain.model.user.Address;

import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

@Schema(description = "ユーザープロフィール編集用リクエスト")
public record UpdateUserProfileRequest (

    @NotBlank(message = "名前は必須です")
    @Size(max = 16, message = "名前は16文字以内で入力してください")
    @Schema(description = "名前", example = "山田 太郎")
    String name,

    @NotNull(message = "居住地は必須です")
    @Schema(description = "居住地", example = "TOKYO")
    Address address,

    @NotNull(message = "メイン写真URLは必須です")
    @Schema(description = "メイン写真", format = "binary")
    MultipartFile mainPhoto,

    @NotNull(message = "自己紹介文は必須です")
    @Size(min = 20, max = 500, message = "自己紹介文は20文字以上500文字以下で入力してください")
    @Schema(description = "自己紹介文", example = "都内でエンジニアをしています。休日はカフェ巡りやランニングを楽しんでいます。")
    String introduction,

    @Min(130)
    @Max(200)
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
    List<MultipartFile> subPhotos
) {}
package com.reimi.reimi_app.infrastructure.web.dto.request.report;

import java.math.BigDecimal;

import org.springframework.web.multipart.MultipartFile;

import com.reimi.reimi_app.domain.model.report.value.FeelingType;
import com.reimi.reimi_app.domain.model.report.value.ForecastType;
import com.reimi.reimi_app.domain.model.report.value.MediaType;
import com.reimi.reimi_app.domain.model.report.value.WeatherType;

import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;

@Schema(description = "ユーザーのウェザーリポート投稿用リクエスト")
public record PostWeatherReportRequest(

    @NotBlank(message = "コメントは必須です")
    @Schema(description = "コメント", example = "今日はとても寒いです")
    String comment,

    @NotNull(message = "天気は必須です")
    @Schema(description = "天気", example = "CLEAR_STARS")
    WeatherType weatherType,

    @NotNull(message = "体感は必須です")
    @Schema(description = "体感", example = "VERY_COLD")
    FeelingType feelingType,

    @NotNull(message = "予測は必須です")
    @Schema(description = "予報", example = "NO_CHANGE")
    ForecastType forecastType,

    @NotNull(message = "緯度は必須です")
    @Schema(description = "緯度", example = "35.681236")
    BigDecimal latitude,

    @NotNull(message = "経度は必須です")
    @Schema(description = "経度", example = "139.767125")
    BigDecimal longitude,

    @NotNull(message = "メディアタイプは必須です")
    @Schema(description = "メディアタイプ", example = "IMAGE")
    MediaType mediaType,

    @NotNull(message = "写真は必須です")
    @Schema(description = "天気の写真", type = "string", format = "binary")
    MultipartFile weatherPhoto,

    @Schema(description = "観測値情報（任意）")
    WeatherObservationRequest observation

) {}
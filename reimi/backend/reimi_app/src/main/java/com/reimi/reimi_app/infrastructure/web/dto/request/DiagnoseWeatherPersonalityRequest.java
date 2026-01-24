package com.reimi.reimi_app.infrastructure.web.dto.request;

import com.reimi.reimi_app.domain.model.weatherpersonality.AnswerChoice;

import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.NotNull;

@Schema(description = "ユーザーのウェザーパーソナリティ診断回答用リクエスト")
public record DiagnoseWeatherPersonalityRequest(

    @NotNull(message = "Q1の回答は必須です")
    @Schema(description = "質問１", example = "STRONGLY_A")
    AnswerChoice q1Answer,

    @NotNull(message = "Q2の回答は必須です")
    @Schema(description = "質問２", example = "STRONGLY_A")
    AnswerChoice q2Answer,

    @NotNull(message = "Q3の回答は必須です")
    @Schema(description = "質問３", example = "STRONGLY_A")
    AnswerChoice q3Answer,

    @NotNull(message = "Q4の回答は必須です")
    @Schema(description = "質問４", example = "STRONGLY_A")
    AnswerChoice q4Answer,

    @NotNull(message = "Q5の回答は必須です")
    @Schema(description = "質問５", example = "STRONGLY_A")
    AnswerChoice q5Answer,

    @NotNull(message = "Q6の回答は必須です")
    @Schema(description = "質問６", example = "STRONGLY_A")
    AnswerChoice q6Answer,

    @NotNull(message = "Q7の回答は必須です")
    @Schema(description = "質問７", example = "STRONGLY_A")
    AnswerChoice q7Answer,

    @NotNull(message = "Q8の回答は必須です")
    @Schema(description = "質問８", example = "STRONGLY_A")
    AnswerChoice q8Answer,

    @NotNull(message = "Q9の回答は必須です")
    @Schema(description = "質問９", example = "STRONGLY_A")
    AnswerChoice q9Answer,

    @NotNull(message = "Q10の回答は必須です")
    @Schema(description = "質問１０", example = "STRONGLY_A")
    AnswerChoice q10Answer,

    @NotNull(message = "Q11の回答は必須です")
    @Schema(description = "質問１１", example = "STRONGLY_A")
    AnswerChoice q11Answer,

    @NotNull(message = "Q12の回答は必須です")
    @Schema(description = "質問１２", example = "STRONGLY_A")
    AnswerChoice q12Answer,

    @NotNull(message = "Q13の回答は必須です")
    @Schema(description = "質問１３", example = "STRONGLY_A")
    AnswerChoice q13Answer,

    @NotNull(message = "Q14の回答は必須です")
    @Schema(description = "質問１４", example = "STRONGLY_A")
    AnswerChoice q14Answer,

    @NotNull(message = "Q15の回答は必須です")
    @Schema(description = "質問１５", example = "STRONGLY_A")
    AnswerChoice q15Answer,

    @NotNull(message = "Q16の回答は必須です")
    @Schema(description = "質問１６", example = "STRONGLY_A")
    AnswerChoice q16Answer
) {}
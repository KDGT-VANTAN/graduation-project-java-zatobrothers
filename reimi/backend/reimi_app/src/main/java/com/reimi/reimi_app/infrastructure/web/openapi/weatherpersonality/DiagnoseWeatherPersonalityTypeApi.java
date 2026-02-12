package com.reimi.reimi_app.infrastructure.web.openapi.weatherpersonality;

import java.lang.annotation.Target;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

import com.reimi.reimi_app.infrastructure.web.dto.request.DiagnoseWeatherPersonalityRequest;
import com.reimi.reimi_app.infrastructure.web.dto.response.ApiErrorResponse;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.ExampleObject;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.parameters.RequestBody;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;

@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
@Operation(
    summary = "ウェザーパーソナリティ診断結果スコアリング",
    description = "ユーザーのウェザーパーソナリティタイプの診断結果をスコアリングして保存するAPI",
    requestBody = @RequestBody(
        required = true,
        content = @Content(
            mediaType = "application/json",
            schema = @Schema(implementation = DiagnoseWeatherPersonalityRequest.class)
        )
    )
)
@ApiResponses({
    @ApiResponse(
        responseCode = "201",
        description = "ユーザーのウェザーパーソナリティ診断が正常に行われました",
        content = @Content(
            mediaType = "application/json"
        )
    ),
    @ApiResponse(
        responseCode = "400",
        description = "無効なリクエスト",
        content = @Content(
            mediaType = "application/json",
            schema = @Schema(implementation = ApiErrorResponse.class),
            examples = {
                @ExampleObject(
                    name = "フォーマット不正",
                    description = "リクエスト形式が正しくない場合",
                    value = """
                    {
                        "code": "INVALID_REQUEST",
                        "message": "無効なリクエストです"
                    }
                    """
                ),
                @ExampleObject(
                    name = "バリデーションエラー",
                    description = "入力値のバリデーションに失敗した場合",
                    value = """
                    {
                        "code": "INVALID_REQUEST",
                        "message": "入力値が不正です",
                        "details": {
                            "q1Answer": "Q1の回答は必須です"
                        }
                    }
                    """
                )
            }
        )
    ),
    @ApiResponse(
        responseCode = "401",
        description = "認証エラー",
        content = @Content(
            mediaType = "application/json",
            schema = @Schema(implementation = ApiErrorResponse.class),
            examples = @ExampleObject(
                value = """
                {
                    "code": "UNAUTHENTICATED",
                    "message": "認証されていません"
                }
                """
            )
        )
    ),
    @ApiResponse(
        responseCode = "409",
        description = "重複エラー",
        content = @Content(
            mediaType = "application/json",
            schema = @Schema(implementation = ApiErrorResponse.class),
            examples = {
                @ExampleObject(
                    value = """
                    {
                        "code": "DIAGNOSE_RESUlT_ALREADY_EXISTS",
                        "message": "既に診断済みです"
                    }
                    """
                )
            }
        )
    ),
    @ApiResponse(
        responseCode = "500",
        description = "サーバーエラー",
        content = @Content(
            mediaType = "application/json",
            schema = @Schema(implementation = ApiErrorResponse.class),
            examples = @ExampleObject(
                value = """
                {
                    "code": "INTERNAL_SERVER_ERROR",
                    "message": "予期しないエラーが発生しました"
                }
                """
            )
        )
    )
})
public @interface DiagnoseWeatherPersonalityTypeApi {
}
package com.reimi.reimi_app.infrastructure.web.openapi.weatherforecast;

import java.lang.annotation.Target;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

import com.reimi.reimi_app.infrastructure.web.dto.response.ApiErrorResponse;
import com.reimi.reimi_app.infrastructure.web.dto.response.GetWeatherForecastResponse;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.ExampleObject;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;

@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
@Operation(
    summary = "天気予報の詳細取得",
    description = "ある地点での天気予報の詳細情報を取得できるAPI"
)
@ApiResponses({
    @ApiResponse(
        responseCode = "200",
        description = "天気予報の詳細取得成功",
        content = @Content(
            mediaType = "application/json",
            schema = @Schema(implementation = GetWeatherForecastResponse.class)
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
                            "latitude": "緯度は必須です"
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
    ),
    @ApiResponse(
        responseCode = "502",
        description = "外部APIエラー（Bad Gateway）",
        content = @Content(
            mediaType = "application/json",
            schema = @Schema(implementation = ApiErrorResponse.class),
            examples = @ExampleObject(
                value = """
                {
                    "code": "EXTERNAL_API_ERROR",
                    "message": "外部APIでエラーが発生しました",
                    "details": {
                        "code": "400_002",
                        "message": "key is invalid value"
                    }
                }
                """
            )
        )
    )
})
public @interface GetWeatherForecastApi {
}
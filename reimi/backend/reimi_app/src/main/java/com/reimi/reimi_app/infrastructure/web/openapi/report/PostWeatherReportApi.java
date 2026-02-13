package com.reimi.reimi_app.infrastructure.web.openapi.report;

import java.lang.annotation.Target;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

import com.reimi.reimi_app.infrastructure.web.dto.request.PostWeatherReportRequest;
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
    summary = "ユーザーのウェザーリポート投稿",
    description = "ユーザーがウェザーリポートを投稿するAPI",
    requestBody = @RequestBody(
        required = true,
        content = @Content(
            mediaType = "multipart/form-data",
            schema = @Schema(implementation = PostWeatherReportRequest.class)
        )
    )
)
@ApiResponses({
    @ApiResponse(
        responseCode = "201",
        description = "ユーザーのウェザーリポート投稿が正常に行われました",
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
                            "comment": "コメントは必須です"
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
                        "code": "REPORT_ALREADY_POSTED_TODAY",
                        "message": "本日のウェザーリポートは既に投稿済みです"
                    }
                    """
                )
            }
        )
    ),
    @ApiResponse(
        responseCode = "413",
        description = "ファイルアップロードサイズ超過エラー",
        content = @Content(
            mediaType = "application/json",
            schema = @Schema(implementation = ApiErrorResponse.class),
            examples = @ExampleObject(
                value = """
                {
                    "code": "PAYLOAD_TOO_LARGE",
                    "message": "アップロード可能なファイルサイズを超えています"
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
    )
})
public @interface PostWeatherReportApi {
}
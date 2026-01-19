package com.reimi.reimi_app.infrastructure.web.openapi.message;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import com.reimi.reimi_app.infrastructure.web.dto.response.ApiErrorResponse;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.ExampleObject;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.parameters.RequestBody;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;

@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
@Operation(
    summary = "チャットルームにメッセージ送信",
    description = "マッチング成立後に作成されるチャットルームにメッセージを送信できるAPI",
    requestBody = @RequestBody(
        required = true,
        content = @Content(
            mediaType = "application/json"
        )
    )
)
@Tag(name = "ChatRoom", description = "チャットルーム関連のAPI")
@ApiResponses({
    @ApiResponse(
        responseCode = "201",
        description = "メッセージ送信が成功",
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
            examples = @ExampleObject(
                value = """
                {
                    "code": "INVALID_REQUEST",
                    "message": "メッセージは必須です"
                }
                """
            )
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
        responseCode = "403",
        description = "権限エラー",
        content = @Content(
            mediaType = "application/json",
            schema = @Schema(implementation = ApiErrorResponse.class),
            examples = @ExampleObject(
                value = """
                {
                    "code": "ACCESS_DENIED",
                    "message": "この操作を行う権限がありません"
                }
                """
            )
        )
    ),
    @ApiResponse(
        responseCode = "404",
        description = "リソース不存在エラー",
        content = @Content(
            mediaType = "application/json",
            schema = @Schema(implementation = ApiErrorResponse.class),
            examples = @ExampleObject(
                value = """
                {
                    "code": "RESOURCE_NOT_FOUND",
                    "message": "チャットルームが見つかりません"
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
public @interface SendTextMessageApi {
}
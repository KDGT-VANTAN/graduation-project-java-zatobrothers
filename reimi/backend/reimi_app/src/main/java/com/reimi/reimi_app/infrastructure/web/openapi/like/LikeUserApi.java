package com.reimi.reimi_app.infrastructure.web.openapi.like;

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

@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
@Operation(
    summary = "ユーザーいいね",
    description = "ユーザーにいいねを送れるAPI。ユーザー双方がいいねを送信した場合のみマッチングが成立する。",
    requestBody = @RequestBody(
        required = true,
        content = @Content(
            mediaType = "application/json"
        )
    )
)
@ApiResponses({
    @ApiResponse(
        responseCode = "201",
        description = "いいね送信が成功",
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
                    "message": "ユーザー自身にはいいねできません"
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
        responseCode = "404",
        description = "リソース不存在エラー",
        content = @Content(
            mediaType = "application/json",
            schema = @Schema(implementation = ApiErrorResponse.class),
            examples = @ExampleObject(
                value = """
                {
                    "code": "RESOURCE_NOT_FOUND",
                    "message": "ユーザーが見つかりません"
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
                    name = "いいね重複",
                    description = "既にいいねを送信している場合",
                    value = """
                    {
                        "code": "LIKE_ALREADY_SENT",
                        "message": "既にいいねを送信しています"
                    }
                    """
                ),
                @ExampleObject(
                    name = "マッチング重複",
                    description = "既にマッチングが成立している場合",
                    value = """
                    {
                        "code": "MATCH_ALREADY_EXISTS",
                        "message": "既にマッチングが成立しています"
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
public @interface LikeUserApi {
}

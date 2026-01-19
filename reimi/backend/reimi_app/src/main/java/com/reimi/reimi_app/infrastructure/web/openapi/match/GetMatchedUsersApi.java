package com.reimi.reimi_app.infrastructure.web.openapi.match;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import com.reimi.reimi_app.infrastructure.web.dto.response.ApiErrorResponse;
import com.reimi.reimi_app.infrastructure.web.dto.response.GetMatchedUserListResponse;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.ArraySchema;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.ExampleObject;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;

@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
@Operation(
    summary = "マッチング成立したユーザー一覧取得",
    description = "マッチングが成立したユーザーの一覧を取得できるAPI"
)
@ApiResponses({
    @ApiResponse(
        responseCode = "200",
        description = "マッチング成立したユーザーの一覧取得成功",
        content = @Content(
            mediaType = "application/json",
            array = @ArraySchema(
                schema = @Schema(implementation = GetMatchedUserListResponse.class)
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
public @interface GetMatchedUsersApi {
}

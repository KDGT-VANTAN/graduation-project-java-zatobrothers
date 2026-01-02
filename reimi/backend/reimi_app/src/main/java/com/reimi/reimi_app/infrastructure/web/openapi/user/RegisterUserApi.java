package com.reimi.reimi_app.infrastructure.web.openapi.user;

import java.lang.annotation.Target;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

import com.reimi.reimi_app.infrastructure.web.dto.response.ApiErrorResponse;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.ExampleObject;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;

@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
@Operation(
    summary = "ユーザー新規登録",
    description = "ユーザーの新規登録実行時のAPI",
    tags = { "User" }
)
@ApiResponses({
    @ApiResponse(
        responseCode = "201",
        description = "ユーザーの新規登録が完了しました",
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
                            "email": "メールアドレスの形式が不正です",
                            "introduction": "自己紹介文は20文字以上500文字以下で入力してください"
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
                    name = "ユーザー重複",
                    description = "既に登録されているユーザーで新規登録をした場合",
                    value = """
                    {
                        "code": "USER_ALREADY_EXISTS",
                        "message": "既に登録済みのユーザーです"
                    }
                    """
                ),
                @ExampleObject(
                    name = "メール重複",
                    description = "既に登録されているメールアドレスで新規登録をした場合",
                    value = """
                    {
                        "code": "EMAIL_ALREADY_EXISTS",
                        "message": "既に使用されているメールアドレスです"
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
public @interface RegisterUserApi {
}
package com.reimi.reimi_app.infrastructure.web.openapi.others;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

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
    summary = "API基本情報取得",
    description = "ReimiアプリAPIの基本情報を取得できるAPI"
)
@ApiResponses({
    @ApiResponse(
        responseCode = "200",
        description = "API基本情報の取得成功",
        content = @Content(
            mediaType = "application/json",
            schema = @Schema(
                type = "object",
                example = """
                {
                "app_name": "Reimi",
                "version": "1.0.0",
                "status": "running",
                "message": "天気でつながる、出会いのアプリ"
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
public @interface HomeApi {
}
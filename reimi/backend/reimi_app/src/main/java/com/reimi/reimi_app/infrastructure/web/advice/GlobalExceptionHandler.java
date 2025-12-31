package com.reimi.reimi_app.infrastructure.web.advice;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import com.reimi.reimi_app.application.exception.ClientErrorException;
import com.reimi.reimi_app.infrastructure.web.dto.response.ApiErrorResponse;

@RestControllerAdvice
public class GlobalExceptionHandler {
    // クライアント起因のエラー（400番台のエラー）処理
    @ExceptionHandler(ClientErrorException.class)
    public ResponseEntity<ApiErrorResponse> handleClientError(ClientErrorException ex) {
        return ResponseEntity
            .status(ex.getStatus())
            .body(new ApiErrorResponse(
                ex.getCode(),
                ex.getMessage(),
                null
            ));
    }
    // 想定外エラー
    @ExceptionHandler(Exception.class)
    public ResponseEntity<ApiErrorResponse> handleException(Exception ex) {
        return ResponseEntity
            .internalServerError()
            .body(new ApiErrorResponse(
                "INTERNAL_SERVER_ERROR",
                "予期しないエラーが発生しました",
                null
            ));
    }
}

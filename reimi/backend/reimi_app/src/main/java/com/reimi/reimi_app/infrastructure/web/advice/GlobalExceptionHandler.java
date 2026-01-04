package com.reimi.reimi_app.infrastructure.web.advice;

import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.http.converter.HttpMessageNotReadableException;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.multipart.MaxUploadSizeExceededException;

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
            )
        );
    }

    // JSONパースエラー処理
    @ExceptionHandler(HttpMessageNotReadableException.class)
    public ResponseEntity<ApiErrorResponse> handleJsonParseError(HttpMessageNotReadableException ex) {
        return ResponseEntity
            .badRequest()
            .body(new ApiErrorResponse(
                    "INVALID_REQUEST",
                    "リクエスト形式が不正です",
                    null
            )
        );
    }

    // 引数が不正である場合のエラー処理（enum変換・UUID変換・日付変換など）
    @ExceptionHandler(IllegalArgumentException.class)
    public ResponseEntity<ApiErrorResponse> handleIllegalArgument(IllegalArgumentException ex) {
        return ResponseEntity
            .badRequest()
            .body(new ApiErrorResponse(
                "INVALID_REQUEST",
                "入力値が不正です",
                null
            )
        );
    }

    // ファイルアップロードサイズ超過のエラー処理
    @ExceptionHandler(MaxUploadSizeExceededException.class)
    public ResponseEntity<ApiErrorResponse> handleMaxUploadSizeExceeded(MaxUploadSizeExceededException ex) {
        return ResponseEntity
            .status(HttpStatus.PAYLOAD_TOO_LARGE)
            .body(new ApiErrorResponse(
                "PAYLOAD_TOO_LARGE",
                "アップロード可能なファイルサイズを超えています",
                null
            )
        );
    }

    // バリデーションエラー処理
    @ExceptionHandler(MethodArgumentNotValidException.class)
    public ResponseEntity<ApiErrorResponse> handleValidationError(MethodArgumentNotValidException ex) {
        Map<String, String> details = ex.getBindingResult()
            .getFieldErrors()
            .stream()
            .collect(Collectors.toMap(
                FieldError::getField,
                FieldError::getDefaultMessage,
                (a, b) -> a
            )
        );
        return ResponseEntity
            .badRequest()
            .body(new ApiErrorResponse(
                "INVALID_REQUEST",
                "入力値が不正です",
                details
            )
        );
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
            )
        );
    }
}

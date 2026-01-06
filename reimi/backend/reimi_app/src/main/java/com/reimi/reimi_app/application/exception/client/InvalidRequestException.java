package com.reimi.reimi_app.application.exception.client;

import org.springframework.http.HttpStatus;

import com.reimi.reimi_app.application.exception.ClientErrorException;

public class InvalidRequestException extends ClientErrorException {

    private static final String DEFAULT_MESSAGE = "無効なリクエストです";

    public InvalidRequestException() {
        super(
            "INVALID_REQUEST",
            DEFAULT_MESSAGE,
            HttpStatus.BAD_REQUEST
        );
    }

    public InvalidRequestException(String message) {
        super(
            "INVALID_REQUEST",
            message,
            HttpStatus.BAD_REQUEST
        );
    }
}

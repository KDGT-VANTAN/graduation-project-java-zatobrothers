package com.reimi.reimi_app.application.exception;

import org.springframework.http.HttpStatus;

public class InvalidRequestException extends ClientErrorException {
    public InvalidRequestException(String message) {
        super(
            "INVALID_REQUEST",
            message,
            HttpStatus.BAD_REQUEST
        );
    }
}

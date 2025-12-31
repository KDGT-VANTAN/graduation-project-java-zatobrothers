package com.reimi.reimi_app.application.exception.client;

import org.springframework.http.HttpStatus;

import com.reimi.reimi_app.application.exception.ClientErrorException;

public class InvalidRequestException extends ClientErrorException {
    public InvalidRequestException(String message) {
        super(
            "INVALID_REQUEST",
            message,
            HttpStatus.BAD_REQUEST
        );
    }
}

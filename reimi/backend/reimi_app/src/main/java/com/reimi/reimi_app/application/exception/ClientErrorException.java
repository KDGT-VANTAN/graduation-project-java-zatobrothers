package com.reimi.reimi_app.application.exception;

import org.springframework.http.HttpStatus;

public abstract class ClientErrorException extends ApplicationException {

    protected ClientErrorException(
        String code,
        String message,
        HttpStatus status
    ) {
        super(code, message, status);

        if (!status.is4xxClientError()) {
            throw new IllegalArgumentException(
                "ClientErrorException must be 4xx status"
            );
        }
    }
}

package com.reimi.reimi_app.application.exception;

import org.springframework.http.HttpStatus;

public class UnauthenticatedException extends ClientErrorException {
    public UnauthenticatedException() {
        super(
            "UNAUTHENTICATED",
            "認証されていません",
            HttpStatus.UNAUTHORIZED
        );
    }
}

package com.reimi.reimi_app.application.exception.client;

import org.springframework.http.HttpStatus;

import com.reimi.reimi_app.application.exception.ClientErrorException;

public class UnauthenticatedException extends ClientErrorException {
    public UnauthenticatedException() {
        super(
            "UNAUTHENTICATED",
            "認証されていません",
            HttpStatus.UNAUTHORIZED
        );
    }
}

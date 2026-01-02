package com.reimi.reimi_app.application.exception.client;

import org.springframework.http.HttpStatus;

import com.reimi.reimi_app.application.exception.ClientErrorException;

public class AccessDeniedException extends ClientErrorException {

    public AccessDeniedException() {
        super(
            "ACCESS_DENIED",
            "この操作を行う権限がありません",
            HttpStatus.FORBIDDEN
        );
    }
}
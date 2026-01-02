package com.reimi.reimi_app.application.exception.client;

import org.springframework.http.HttpStatus;

import com.reimi.reimi_app.application.exception.ClientErrorException;

public class EmailAlreadyExistsException extends ClientErrorException {
    public EmailAlreadyExistsException() {
        super(
            "EMAIL_ALREADY_EXISTS",
            "既に使用されているメールアドレスです",
            HttpStatus.CONFLICT
        );
    }
}


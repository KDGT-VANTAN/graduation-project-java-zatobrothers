package com.reimi.reimi_app.application.exception;

import org.springframework.http.HttpStatus;

public class EmailAlreadyExistsException extends ClientErrorException {
    public EmailAlreadyExistsException() {
        super(
            "EMAIL_ALREADY_EXISTS",
            "既に使用されているメールアドレスです",
            HttpStatus.CONFLICT
        );
    }
}


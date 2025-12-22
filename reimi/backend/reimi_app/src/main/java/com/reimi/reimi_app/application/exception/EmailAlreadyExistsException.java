package com.reimi.reimi_app.application.exception;

public class EmailAlreadyExistsException extends RuntimeException {

    public EmailAlreadyExistsException() {
        super("すでに使用されているメールアドレスです");
    }
}


package com.reimi.reimi_app.application.exception;

import org.springframework.http.HttpStatus;

public class UserAlreadyExistsException  extends ClientErrorException {
    public UserAlreadyExistsException() {
        super(
            "USER_ALREADY_EXISTS",
            "既に登録済みのユーザーです",
            HttpStatus.CONFLICT
        );
    }
}

package com.reimi.reimi_app.application.exception.client;

import org.springframework.http.HttpStatus;

import com.reimi.reimi_app.application.exception.ClientErrorException;

public class LikeAlreadyExistsException extends ClientErrorException {
    public LikeAlreadyExistsException() {
        super(
            "LIKE_ALREADY_SENT",
            "既にいいねが送られています",
            HttpStatus.CONFLICT
        );
    }
}
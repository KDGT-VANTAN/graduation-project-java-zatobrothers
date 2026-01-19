package com.reimi.reimi_app.application.exception.client;

import org.springframework.http.HttpStatus;

import com.reimi.reimi_app.application.exception.ClientErrorException;

public class RainbowLikeAlreadyExistsException extends ClientErrorException {
    public RainbowLikeAlreadyExistsException() {
        super(
            "RAINBOW_LIKE_ALREADY_SENT",
            "既にレインボーいいねを送信しています",
            HttpStatus.CONFLICT
        );
    }
}
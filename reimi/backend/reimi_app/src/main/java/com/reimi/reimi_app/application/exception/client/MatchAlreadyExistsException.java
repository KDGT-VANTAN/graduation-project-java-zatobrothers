package com.reimi.reimi_app.application.exception.client;

import org.springframework.http.HttpStatus;

import com.reimi.reimi_app.application.exception.ClientErrorException;

public class MatchAlreadyExistsException extends ClientErrorException {
    public MatchAlreadyExistsException() {
        super(
            "MATCH_ALREADY_SENT",
            "既にマッチングが成立しています",
            HttpStatus.CONFLICT
        );
    }
}
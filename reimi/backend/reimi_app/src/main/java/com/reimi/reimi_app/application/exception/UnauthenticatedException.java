package com.reimi.reimi_app.application.exception;

public class UnauthenticatedException extends RuntimeException {

    public UnauthenticatedException() {
        super("ユーザーの認証情報がありません");
    }
}

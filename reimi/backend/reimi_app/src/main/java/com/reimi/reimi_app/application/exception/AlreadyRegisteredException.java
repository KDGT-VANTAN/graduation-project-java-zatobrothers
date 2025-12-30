package com.reimi.reimi_app.application.exception;

public class AlreadyRegisteredException  extends RuntimeException {
    public AlreadyRegisteredException() {
        super("すでに登録済みのユーザーです");
    }
}

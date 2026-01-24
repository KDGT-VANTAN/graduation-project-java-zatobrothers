package com.reimi.reimi_app.application.exception.client;

import org.springframework.http.HttpStatus;

import com.reimi.reimi_app.application.exception.ClientErrorException;

public class DiagnoseResultAlreadyExistsException  extends ClientErrorException {
    public DiagnoseResultAlreadyExistsException() {
        super(
            "DIAGNOSE_RESUlT_ALREADY_EXISTS",
            "既に診断済みです",
            HttpStatus.CONFLICT
        );
    }
}
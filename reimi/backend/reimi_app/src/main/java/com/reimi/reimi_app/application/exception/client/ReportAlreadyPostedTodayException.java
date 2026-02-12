package com.reimi.reimi_app.application.exception.client;

import org.springframework.http.HttpStatus;

import com.reimi.reimi_app.application.exception.ClientErrorException;

public class ReportAlreadyPostedTodayException  extends ClientErrorException {
    public ReportAlreadyPostedTodayException() {
        super(
            "REPORT_ALREADY_POSTED_TODAY",
            "本日のウェザーリポートは既に投稿済みです",
            HttpStatus.CONFLICT
        );
    }
}
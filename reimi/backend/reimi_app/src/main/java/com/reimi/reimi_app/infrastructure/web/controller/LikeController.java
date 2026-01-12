package com.reimi.reimi_app.infrastructure.web.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.reimi.reimi_app.application.usecase.LikeUseCase;
import com.reimi.reimi_app.domain.model.user.UserId;

@RestController
@RequestMapping("/likes")
public class LikeController {

    private final LikeUseCase likeUseCase;

    public LikeController(
        LikeUseCase likeUseCase
    ) {
        this.likeUseCase = likeUseCase;
    }

    @PostMapping
    public ResponseEntity<Void> like(@PathVariable UserId toUserId) {
        likeUseCase.likeUser(toUserId);

        return ResponseEntity.status(HttpStatus.CREATED).build();
    }
}
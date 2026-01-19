package com.reimi.reimi_app.infrastructure.web.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.reimi.reimi_app.application.command.SendRainbowLikeCommand;
import com.reimi.reimi_app.application.usecase.RainbowLikeUseCase;
import com.reimi.reimi_app.domain.model.user.UserId;
import com.reimi.reimi_app.infrastructure.web.dto.request.SendRainbowLikeRequest;
import com.reimi.reimi_app.infrastructure.web.openapi.rainbowlike.RainbowLikeUserApi;

import org.springframework.web.bind.annotation.RequestBody;

import jakarta.validation.Valid;

@RestController
@RequestMapping("/rainbow-likes")
public class RainbowLikeController {

    private final RainbowLikeUseCase rainbowLikeUseCase;

    public RainbowLikeController(
        RainbowLikeUseCase rainbowLikeUseCase
    ) {
        this.rainbowLikeUseCase = rainbowLikeUseCase;
    }

    @PostMapping("/{userId}")
    @RainbowLikeUserApi
    public ResponseEntity<Void> RainbowLike(
        @PathVariable("userId") UserId toUserId,
        @Valid @RequestBody SendRainbowLikeRequest request
    ) {
        rainbowLikeUseCase.rainbowLikeUser(
            new SendRainbowLikeCommand(
                toUserId,
                request.message()
            )
        );

        return ResponseEntity.status(HttpStatus.CREATED).build();
    }
}
package com.reimi.reimi_app.infrastructure.web.controller.v1;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.reimi.reimi_app.application.command.SendRainbowLikeCommand;
import com.reimi.reimi_app.application.usecase.RainbowLikeUseCase;
import com.reimi.reimi_app.domain.model.user.UserId;
import com.reimi.reimi_app.infrastructure.web.dto.request.SendRainbowLikeRequest;
import com.reimi.reimi_app.infrastructure.web.dto.response.GetRainbowLikedUserListResponse;
import com.reimi.reimi_app.infrastructure.web.openapi.rainbowlike.RainbowLikeUserApi;

import io.swagger.v3.oas.annotations.tags.Tag;

import org.springframework.web.bind.annotation.RequestBody;

import jakarta.validation.Valid;

@RestController
@Tag(name = "RainbowLike", description = "レインボーいいね関連のAPI")
public class RainbowLikeController extends ApiV1Controller {

    private final RainbowLikeUseCase rainbowLikeUseCase;

    public RainbowLikeController(
        RainbowLikeUseCase rainbowLikeUseCase
    ) {
        this.rainbowLikeUseCase = rainbowLikeUseCase;
    }

    @PostMapping(path = "/rainbow-likes/{userId}")
    @RainbowLikeUserApi
    public ResponseEntity<Void> rainbowLike(
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

    @GetMapping(path = "/rainbow-likes/users/received")
    public ResponseEntity<List<GetRainbowLikedUserListResponse>> getRainbowLikeReceivedUsers() {

        List<GetRainbowLikedUserListResponse> response = rainbowLikeUseCase.getRainbowLikeReceivedUserList()
                .stream()
                .map(user -> new GetRainbowLikedUserListResponse(
                    user.getId().value(),
                    user.getName(),
                    user.getBirthDate(),
                    user.getAddress(),
                    user.getSignedMainPhotoUrl(),
                    user.getRainbowLikeMessage()
                ))
                .toList();

        return ResponseEntity.ok(response);
    }
}
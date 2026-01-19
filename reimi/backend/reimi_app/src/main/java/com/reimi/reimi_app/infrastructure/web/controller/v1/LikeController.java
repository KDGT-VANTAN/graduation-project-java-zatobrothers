package com.reimi.reimi_app.infrastructure.web.controller.v1;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.reimi.reimi_app.application.usecase.LikeUseCase;
import com.reimi.reimi_app.domain.model.user.UserId;
import com.reimi.reimi_app.infrastructure.web.dto.response.GetLikedUserListResponse;
import com.reimi.reimi_app.infrastructure.web.openapi.like.GetLikeGivenUsersApi;
import com.reimi.reimi_app.infrastructure.web.openapi.like.GetLikeReceivedUsersApi;
import com.reimi.reimi_app.infrastructure.web.openapi.like.LikeUserApi;

import io.swagger.v3.oas.annotations.parameters.RequestBody;
import io.swagger.v3.oas.annotations.tags.Tag;

@RestController
@Tag(name = "Like", description = "いいね関連のAPI")
public class LikeController extends ApiV1Controller {

    private final LikeUseCase likeUseCase;

    public LikeController(
        LikeUseCase likeUseCase
    ) {
        this.likeUseCase = likeUseCase;
    }

    @PostMapping(path = "/likes/{userId}")
    @LikeUserApi
    public ResponseEntity<Void> like(
        @PathVariable("userId") UserId toUserId,
        @RequestBody(required = false) Object ignored) {
        likeUseCase.likeUser(toUserId);

        return ResponseEntity.status(HttpStatus.CREATED).build();
    }

    @GetMapping(path = "/likes/users/given")
    @GetLikeGivenUsersApi
    public ResponseEntity<List<GetLikedUserListResponse>> getLikeGivenUsers() {

        List<GetLikedUserListResponse> response = likeUseCase.getLikeGivenUserList()
                .stream()
                .map(user -> new GetLikedUserListResponse(
                    user.getId().value(),
                    user.getName(),
                    user.getBirthDate(),
                    user.getAddress(),
                    user.getSignedMainPhotoUrl()
                ))
                .toList();

        return ResponseEntity.ok(response);
    }

    @GetMapping(path = "/likes/users/received")
    @GetLikeReceivedUsersApi
    public ResponseEntity<List<GetLikedUserListResponse>> getLikeReceivedUsers() {

        List<GetLikedUserListResponse> response = likeUseCase.getLikeReceivedUserList()
                .stream()
                .map(user -> new GetLikedUserListResponse(
                    user.getId().value(),
                    user.getName(),
                    user.getBirthDate(),
                    user.getAddress(),
                    user.getSignedMainPhotoUrl()
                ))
                .toList();

        return ResponseEntity.ok(response);
    }

}
package com.reimi.reimi_app.infrastructure.web.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.reimi.reimi_app.application.usecase.UserProfileUseCase;
import com.reimi.reimi_app.domain.model.user.UserId;
import com.reimi.reimi_app.infrastructure.web.dto.response.UserWithProfileResponse;
import com.reimi.reimi_app.infrastructure.web.openapi.profile.GetUserProfileApi;

@RestController
@RequestMapping("/users")
public class UserProfileController {
    private final UserProfileUseCase userProfileUseCase;

    public UserProfileController(
        UserProfileUseCase userProfileUseCase
    ) {
        this.userProfileUseCase = userProfileUseCase;
    }

    @GetMapping("/{userId}/profile")
    @GetUserProfileApi
    public ResponseEntity<UserWithProfileResponse> getProfile(@PathVariable UserId userId) {
        UserWithProfileResponse response = userProfileUseCase.getUserProfile(userId);

        return ResponseEntity.ok(response);
    }
}

package com.reimi.reimi_app.infrastructure.web.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.reimi.reimi_app.application.command.UpdateUserProfileCommand;
import com.reimi.reimi_app.application.usecase.UserProfileUseCase;
import com.reimi.reimi_app.domain.model.user.UserId;
import com.reimi.reimi_app.infrastructure.web.dto.request.UpdateUserProfileRequest;
import com.reimi.reimi_app.infrastructure.web.dto.response.UserWithProfileResponse;
import com.reimi.reimi_app.infrastructure.web.openapi.profile.GetUserProfileApi;

import jakarta.validation.Valid;

@RestController
@RequestMapping("/users/{userId}/profile")
public class UserProfileController {
    private final UserProfileUseCase userProfileUseCase;

    public UserProfileController(
        UserProfileUseCase userProfileUseCase
    ) {
        this.userProfileUseCase = userProfileUseCase;
    }

    @GetMapping()
    @GetUserProfileApi
    public ResponseEntity<UserWithProfileResponse> getProfile(@PathVariable UserId userId) {
        UserWithProfileResponse response = userProfileUseCase.getUserProfile(userId);

        return ResponseEntity.ok(response);
    }

    @PutMapping(consumes = MediaType.MULTIPART_FORM_DATA_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<Void> editProfile(
        @PathVariable UserId userId,
        @ModelAttribute @Valid UpdateUserProfileRequest request
    ) {
        userProfileUseCase.updateUserProfile(
            userId,
            new UpdateUserProfileCommand(
                request.name(),
                request.address(),
                request.mainPhoto(),
                request.introduction(),
                request.height(),
                request.bodyShape(),
                request.annualIncome(),
                request.bloodType(),
                request.hometown(),
                request.communicationStyle(),
                request.occupation(),
                request.education(),
                request.smoking(),
                request.alcohol(),
                request.holiday(),
                request.sunnyDayHobbies(),
                request.rainyDayHobbies()
            )
        );

        return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
    }
}

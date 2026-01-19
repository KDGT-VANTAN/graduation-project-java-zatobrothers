package com.reimi.reimi_app.infrastructure.web.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.reimi.reimi_app.application.command.RegisterUserCommand;
import com.reimi.reimi_app.application.exception.client.ResourceNotFoundException;
import com.reimi.reimi_app.application.usecase.UserUseCase;
import com.reimi.reimi_app.infrastructure.web.dto.request.RegisterUserRequest;
import com.reimi.reimi_app.infrastructure.web.dto.response.GetMeResponse;
import com.reimi.reimi_app.infrastructure.web.dto.response.GetUserListResponse;
import com.reimi.reimi_app.infrastructure.web.openapi.user.GetMeApi;
import com.reimi.reimi_app.infrastructure.web.openapi.user.GetUsersApi;
import com.reimi.reimi_app.infrastructure.web.openapi.user.RegisterUserApi;
import com.reimi.reimi_app.security.AuthenticatedUserProvider;

import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;


@RestController
@RequestMapping("/users")
@Tag(name = "User", description = "ユーザー関連のAPI")
public class UserController {

    private final AuthenticatedUserProvider authenticatedUserProvider;
    private final UserUseCase userUseCase;

    public UserController(
        AuthenticatedUserProvider authenticatedUserProvider,
        UserUseCase userUseCase
    ) {
        this.authenticatedUserProvider = authenticatedUserProvider;
        this.userUseCase = userUseCase;
    }

    @GetMapping("/me")
    @GetMeApi
    public ResponseEntity<GetMeResponse> getMe() {

        String myFirebaseUid = authenticatedUserProvider.getFirebaseUid();
        GetMeResponse getMeResponse = userUseCase.getUser(myFirebaseUid)
            .map(user -> new GetMeResponse(
                user.getId().value(),
                user.getName(),
                user.getGender(),
                user.getBirthDate(),
                user.getAddress(),
                user.getEmail(),
                user.getStatus()
            ))
            .orElseThrow(() -> new ResourceNotFoundException("ユーザー"));

        return ResponseEntity.ok(getMeResponse);
    }
    @GetMapping
    @GetUsersApi
    public ResponseEntity<List<GetUserListResponse>> getUsers() {

        String myFirebaseUid = authenticatedUserProvider.getFirebaseUid();

        List<GetUserListResponse> response = userUseCase.getUsersExcludingMe(myFirebaseUid)
                .stream()
                .map(user -> new GetUserListResponse(
                    user.getId().value(),
                    user.getName(),
                    user.getBirthDate(),
                    user.getAddress(),
                    user.getSignedMainPhotoUrl(),
                    user.getProfile().getIntroduction()
                ))
                .toList();

        return ResponseEntity.ok(response);
    }

    @PostMapping(consumes = MediaType.MULTIPART_FORM_DATA_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
    @RegisterUserApi
    public ResponseEntity<Void> registerUser(@ModelAttribute @Valid RegisterUserRequest request) {
        userUseCase.registerUser(
            new RegisterUserCommand(
                request.name(),
                request.gender(),
                request.birthDate(),
                request.address(),
                request.mainPhoto(),
                request.email(),
                request.introduction()
            )
        );

        return ResponseEntity.status(HttpStatus.CREATED).build();
    }
}

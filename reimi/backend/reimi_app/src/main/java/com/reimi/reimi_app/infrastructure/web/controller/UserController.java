package com.reimi.reimi_app.infrastructure.web.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.reimi.reimi_app.application.command.RegisterUserCommand;
import com.reimi.reimi_app.application.usecase.UserUseCase;
import com.reimi.reimi_app.domain.model.user.Address;
import com.reimi.reimi_app.domain.model.user.Gender;
import com.reimi.reimi_app.infrastructure.web.dto.request.RegisterUserRequest;
import com.reimi.reimi_app.infrastructure.web.dto.response.GetUserListResponse;
import com.reimi.reimi_app.infrastructure.web.openapi.user.GetUsersApi;
import com.reimi.reimi_app.infrastructure.web.openapi.user.RegisterUserApi;
import com.reimi.reimi_app.security.AuthenticatedUserProvider;

import jakarta.validation.Valid;


@RestController
@RequestMapping("/users")
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
                    user.getAddress().getLabel(),
                    user.getMainPhotoUrl(),
                    user.getProfile().getIntroduction()
                ))
                .toList();

        return ResponseEntity.ok(response);
    }

    @PostMapping
    @RegisterUserApi
    public ResponseEntity<Void> registerUser(@Valid @RequestBody RegisterUserRequest request) {
        userUseCase.registerUser(
            new RegisterUserCommand(
                request.name(),
                Gender.valueOf(request.gender()),
                request.birthDate(),
                Address.valueOf(request.address()),
                request.mainPhotoUrl(),
                request.email(),
                request.introduction()
            )
        );

        return ResponseEntity.status(HttpStatus.CREATED).build();
    }
}

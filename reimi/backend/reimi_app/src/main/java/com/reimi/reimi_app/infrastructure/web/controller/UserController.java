package com.reimi.reimi_app.infrastructure.web.controller;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.reimi.reimi_app.application.command.RegisterUserCommand;
import com.reimi.reimi_app.application.usecase.UserUseCase;
import com.reimi.reimi_app.domain.model.user.Address;
import com.reimi.reimi_app.domain.model.user.Gender;
import com.reimi.reimi_app.infrastructure.web.dto.request.RegisterUserRequest;

@RestController
@RequestMapping("/users")
public class UserController {

    private final UserUseCase userUseCase;

    public UserController(UserUseCase userUseCase) {
        this.userUseCase = userUseCase;
    }

    @PostMapping
    public void registerUser(@RequestBody RegisterUserRequest request) {
        userUseCase.registerUser(
            new RegisterUserCommand(
                request.firebaseUid(),
                request.name(),
                Gender.valueOf(request.gender()),
                request.birthDate(),
                Address.valueOf(request.address()),
                request.mainPhotoUrl(),
                request.email()
            )
        );
    }
}

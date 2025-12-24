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

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;

@RestController
@RequestMapping("/users")
public class UserController {

    private final UserUseCase userUseCase;

    public UserController(UserUseCase userUseCase) {
        this.userUseCase = userUseCase;
    }

    @Operation(
        summary = "ユーザー一覧取得",
        description = "登録されているユーザーの一覧を取得できるAPI"
    )
    @ApiResponses({
        @ApiResponse(responseCode = "200", description = "ユーザーの一覧を取得しました"),
    })
    @GetMapping
    public ResponseEntity<List<GetUserListResponse>> getUsers() {
        List<GetUserListResponse> response = userUseCase.getUsers()
                .stream()
                .map(user -> new GetUserListResponse(
                    user.getId().value(),
                    user.getFirebaseUid(),
                    user.getName(),
                    user.getBirthDate(),
                    user.getAddress().getLabel(),
                    user.getMainPhotoUrl(),
                    user.getProfile().getIntroduction()
                ))
                .toList();

        return ResponseEntity.ok(response);
    }

    @Operation(
        summary = "ユーザー新規登録",
        description = "ユーザーの新規登録実行時のAPI"
    )
    @ApiResponses({
        @ApiResponse(responseCode = "201", description = "ユーザーの新規登録が完了しました"),
        @ApiResponse(responseCode = "400", description = "無効なリクエストです")
    })
    @PostMapping
    public ResponseEntity<Void> registerUser(@RequestBody RegisterUserRequest request) {
        userUseCase.registerUser(
            new RegisterUserCommand(
                request.firebaseUid(),
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

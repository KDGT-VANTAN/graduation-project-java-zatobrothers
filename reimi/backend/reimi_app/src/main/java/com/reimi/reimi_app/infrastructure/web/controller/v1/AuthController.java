package com.reimi.reimi_app.infrastructure.web.controller.v1;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.reimi.reimi_app.application.exception.client.ResourceNotFoundException;
import com.reimi.reimi_app.application.service.DeviceTokenService;
import com.reimi.reimi_app.application.usecase.UserUseCase;
import com.reimi.reimi_app.domain.model.user.User;
import com.reimi.reimi_app.infrastructure.web.dto.request.RegisterDeviceTokenRequest;
import com.reimi.reimi_app.infrastructure.web.openapi.user.RegisterDeviceTokenApi;
import com.reimi.reimi_app.security.AuthenticatedUserProvider;

import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;

@RestController
@Tag(name = "02. Auth", description = "ユーザー認証・端末トークン管理関連のAPI")
public class AuthController extends ApiV1Controller {

    private final DeviceTokenService deviceTokenService;
    private final UserUseCase userUseCase;
    private final AuthenticatedUserProvider authenticatedUserProvider;

    public AuthController(
        DeviceTokenService deviceTokenService,
        UserUseCase userUseCase,
        AuthenticatedUserProvider authenticatedUserProvider
    ) {
        this.deviceTokenService = deviceTokenService;
        this.userUseCase = userUseCase;
        this.authenticatedUserProvider = authenticatedUserProvider;
    }

    @PostMapping(path = "/auth/device-tokens")
    @RegisterDeviceTokenApi
    public ResponseEntity<Void> registerDeviceToken(@Valid @RequestBody RegisterDeviceTokenRequest request) {

        String myFirebaseUid = authenticatedUserProvider.getFirebaseUid();
        User user = userUseCase.getUser(myFirebaseUid)
            .orElseThrow(() -> new ResourceNotFoundException("ユーザー"));

        deviceTokenService.register(user.getId(), request.token());

        return ResponseEntity.ok().build();
    }
}
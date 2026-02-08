package com.reimi.reimi_app.infrastructure.web.controller.v1;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.reimi.reimi_app.application.dto.output.UserItemOutput;
import com.reimi.reimi_app.application.usecase.ItemUseCase;
import com.reimi.reimi_app.infrastructure.web.dto.response.UserAccountDetailResponse;
import com.reimi.reimi_app.infrastructure.web.openapi.item.GetUserAccountDetailApi;

import io.swagger.v3.oas.annotations.tags.Tag;

@RestController
@Tag(name = "User", description = "ユーザー関連のAPI")
public class ItemController {

    private final ItemUseCase itemUseCase;

    public ItemController(
        ItemUseCase itemUseCase
    ) {
        this.itemUseCase = itemUseCase;
    }

    @GetMapping("/users/me/account")
    @GetUserAccountDetailApi
    public ResponseEntity<UserAccountDetailResponse> getUserAccountDetail() {

        UserItemOutput output = itemUseCase.getUserItemList();

        var userType =
            output.userWeatherPersonalityType().getWeatherPersonalityType();

        UserAccountDetailResponse response =
            new UserAccountDetailResponse(
                output.userId().value(),
                output.name(),
                output.mainPhotoUrl(),
                userType.getCode(),
                userType.getName(),
                userType.getTypeImageUrl(),
                output.items()
            );

        return ResponseEntity.ok(response);
    }
}

package com.reimi.reimi_app.infrastructure.web.controller;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.reimi.reimi_app.application.usecase.MatchUseCase;
import com.reimi.reimi_app.infrastructure.web.dto.response.GetMatchedUserListResponse;
import com.reimi.reimi_app.infrastructure.web.openapi.match.GetMatchedUsersApi;

@RestController
@RequestMapping("/matches")
public class MatchController {

    private final MatchUseCase matchUseCase;

    public MatchController(
        MatchUseCase matchUseCase
    ) {
        this.matchUseCase = matchUseCase;
    }

    @GetMapping()
    @GetMatchedUsersApi
    public ResponseEntity<List<GetMatchedUserListResponse>> getMatchedUsers() {

        List<GetMatchedUserListResponse> response = matchUseCase.getMatchedUserList()
                .stream()
                .map(user -> new GetMatchedUserListResponse(
                    user.getId().value(),
                    user.getSignedMainPhotoUrl()
                ))
                .toList();

        return ResponseEntity.ok(response);
    }
}

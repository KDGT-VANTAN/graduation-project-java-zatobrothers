package com.reimi.reimi_app.infrastructure.web.controller.v1;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.reimi.reimi_app.application.usecase.MatchUseCase;
import com.reimi.reimi_app.infrastructure.web.dto.response.GetMatchedUserListResponse;
import com.reimi.reimi_app.infrastructure.web.openapi.match.GetMatchedUsersApi;

import io.swagger.v3.oas.annotations.tags.Tag;

@RestController
@Tag(name = "07. Match", description = "マッチング関連のAPI")
public class MatchController extends ApiV1Controller {

    private final MatchUseCase matchUseCase;

    public MatchController(
        MatchUseCase matchUseCase
    ) {
        this.matchUseCase = matchUseCase;
    }

    @GetMapping(path = "/matches")
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

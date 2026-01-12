package com.reimi.reimi_app.infrastructure.web.dto.request;

import com.reimi.reimi_app.domain.model.user.UserId;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(description = "ユーザーいいね用リクエスト")
public record LikeUserRequest (

        @Schema(description = "いいねする相手のユーザーID", example = "5bf5eb52-c5fb-4a4c-b6e3-25e53c28bf93")
        UserId toUserId
) {}
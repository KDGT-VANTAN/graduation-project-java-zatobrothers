package com.reimi.reimi_app.application.usecase;

import com.reimi.reimi_app.domain.model.user.UserId;
import com.reimi.reimi_app.infrastructure.web.dto.response.UserWithProfileResponse;

public interface UserProfileUseCase {
    UserWithProfileResponse getUserProfile(UserId userId);
}

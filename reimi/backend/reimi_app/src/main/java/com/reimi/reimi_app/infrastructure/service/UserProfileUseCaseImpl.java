package com.reimi.reimi_app.infrastructure.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.reimi.reimi_app.application.exception.client.ResourceNotFoundException;
import com.reimi.reimi_app.application.usecase.UserProfileUseCase;
import com.reimi.reimi_app.domain.model.profile.Profile;
import com.reimi.reimi_app.domain.model.user.User;
import com.reimi.reimi_app.domain.model.user.UserId;
import com.reimi.reimi_app.domain.repository.UserProfileRepository;
import com.reimi.reimi_app.infrastructure.storage.image.ImageStorageComponent;
import com.reimi.reimi_app.infrastructure.web.dto.response.UserWithProfileResponse;

@Service
public class UserProfileUseCaseImpl implements UserProfileUseCase {

    private final UserProfileRepository userProfileRepository;
    private final ImageStorageComponent imageStorage;

    public UserProfileUseCaseImpl(
        UserProfileRepository userProfileRepository,
        ImageStorageComponent imageStorage
    ) {
        this.userProfileRepository = userProfileRepository;
        this.imageStorage = imageStorage;
    }
    @Override
    @Transactional(readOnly = true)
    public UserWithProfileResponse getUserProfile(UserId userId) {

        User user = userProfileRepository.findUserByUserId(userId)
            .orElseThrow(() -> new ResourceNotFoundException("ユーザー"));

        user.setSignedMainPhotoUrl(imageStorage.getSignedUrl(user.getMainPhotoUrl()));

        Profile profile = userProfileRepository.findProfileByUserId(userId)
            .orElseThrow(() -> new ResourceNotFoundException("ユーザーのプロフィール"));

        return new UserWithProfileResponse(
            user.getId().value(),
            user.getName(),
            user.getGender().name(),
            user.getBirthDate(),
            user.getAddress().name(),
            user.getSignedMainPhotoUrl(),
            profile.getIntroduction(),
            profile != null ? profile.getHeight() : null,
            profile != null ? profile.getBodyShape().name() : null,
            profile != null ? profile.getAnnualIncome().name() : null,
            profile != null ? profile.getBloodType().name() : null,
            profile != null ? profile.getHometown().name() : null,
            profile != null ? profile.getCommunicationStyle().name() : null,
            profile != null ? profile.getOccupation().name() : null,
            profile != null ? profile.getEducation().name() : null,
            profile != null ? profile.getSmoking().name() : null,
            profile != null ? profile.getAlcohol().name() : null,
            profile != null ? profile.getHoliday().name() : null,
            profile != null ? profile.getSunnyDayHobbies() : null,
            profile != null ? profile.getRainyDayHobbies() : null
        );
    }
}

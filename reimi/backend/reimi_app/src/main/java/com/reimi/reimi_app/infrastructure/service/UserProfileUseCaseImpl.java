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
            user.getGender(),
            user.getBirthDate(),
            user.getAddress(),
            user.getSignedMainPhotoUrl(),
            profile.getIntroduction(),
            profile.getHeight() != null ? profile.getHeight() : null,
            profile.getBodyShape() != null ? profile.getBodyShape() : null,
            profile.getAnnualIncome() != null ? profile.getAnnualIncome() : null,
            profile.getBloodType() != null ? profile.getBloodType() : null,
            profile.getHometown() != null ? profile.getHometown() : null,
            profile.getCommunicationStyle() != null ? profile.getCommunicationStyle() : null,
            profile.getOccupation() != null ? profile.getOccupation() : null,
            profile.getEducation() != null ? profile.getEducation() : null,
            profile.getSmoking() != null ? profile.getSmoking() : null,
            profile.getAlcohol() != null ? profile.getAlcohol() : null,
            profile.getHoliday() != null ? profile.getHoliday() : null,
            profile.getSunnyDayHobbies() != null ? profile.getSunnyDayHobbies() : null,
            profile.getRainyDayHobbies() != null ? profile.getRainyDayHobbies() : null
        );
    }
}

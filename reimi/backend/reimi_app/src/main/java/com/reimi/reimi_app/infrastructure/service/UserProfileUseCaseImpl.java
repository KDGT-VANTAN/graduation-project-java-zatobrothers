package com.reimi.reimi_app.infrastructure.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.reimi.reimi_app.application.command.UpdateUserProfileCommand;
import com.reimi.reimi_app.application.exception.client.AccessDeniedException;
import com.reimi.reimi_app.application.exception.client.ResourceNotFoundException;
import com.reimi.reimi_app.application.usecase.SubPhotoUseCase;
import com.reimi.reimi_app.application.usecase.UserProfileUseCase;
import com.reimi.reimi_app.domain.model.profile.Profile;
import com.reimi.reimi_app.domain.model.user.User;
import com.reimi.reimi_app.domain.model.subphoto.SubPhoto;
import com.reimi.reimi_app.domain.model.user.UserId;
import com.reimi.reimi_app.domain.repository.SubPhotoRepository;
import com.reimi.reimi_app.domain.repository.UserProfileRepository;
import com.reimi.reimi_app.infrastructure.storage.image.ImageStorageComponent;
import com.reimi.reimi_app.infrastructure.storage.image.ImageStoragePath;
import com.reimi.reimi_app.infrastructure.web.dto.response.UserWithProfileResponse;
import com.reimi.reimi_app.security.AuthenticatedUserProvider;

@Service
public class UserProfileUseCaseImpl implements UserProfileUseCase {

    private final UserProfileRepository userProfileRepository;
    private final SubPhotoRepository subPhotoRepository;
    private final AuthenticatedUserProvider authenticatedUserProvider;
    private final ImageStorageComponent imageStorage;
    private final ImageStoragePath imageStoragePath;
    private final SubPhotoUseCase subPhotoUseCase;

    public UserProfileUseCaseImpl(
        UserProfileRepository userProfileRepository,
        SubPhotoRepository subPhotoRepository,
        AuthenticatedUserProvider authenticatedUserProvider,
        ImageStorageComponent imageStorage,
        ImageStoragePath imageStoragePath,
        SubPhotoUseCase subPhotoUseCase
    ) {
        this.userProfileRepository = userProfileRepository;
        this.subPhotoRepository = subPhotoRepository;
        this.authenticatedUserProvider = authenticatedUserProvider;
        this.imageStorage = imageStorage;
        this.imageStoragePath = imageStoragePath;
        this.subPhotoUseCase = subPhotoUseCase;
    }

    @Override
    @Transactional(readOnly = true)
    public UserWithProfileResponse getUserProfile(UserId userId) {

        User user = userProfileRepository.findUserByUserId(userId)
            .orElseThrow(() -> new ResourceNotFoundException("ユーザー"));

        user.setSignedMainPhotoUrl(imageStorage.getSignedUrl(user.getMainPhotoUrl()));

        Profile profile = userProfileRepository.findProfileByUserId(userId)
            .orElseThrow(() -> new ResourceNotFoundException("ユーザーのプロフィール"));

        List<SubPhoto> subPhotos = subPhotoRepository.findAllSubPhotos(profile.getId());

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
            profile.getRainyDayHobbies() != null ? profile.getRainyDayHobbies() : null,
            subPhotos.isEmpty() ? null : subPhotos
        );
    }

    @Override
    @Transactional
    public void updateUserProfile(UserId userId, UpdateUserProfileCommand command) {

        User user = userProfileRepository.findUserByUserId(userId)
            .orElseThrow(() -> new ResourceNotFoundException("ユーザー"));

        String firebaseUid = authenticatedUserProvider.getFirebaseUid();

        // ログインユーザーとUIDが一致しなければ権限エラーを返す
        if (!firebaseUid.equals(user.getFirebaseUid())) {
            throw new AccessDeniedException();
        }

        // 初期値ではnull
        String mainPhotoPath = null;

        if (command.mainPhoto() != null && !command.mainPhoto().isEmpty()) {
            // 画像アップロード処理
            String currentFilePath = user.getMainPhotoUrl();
            String currentFileName = imageStorage.removeUuidPrefix(imageStorage.extractFileName(currentFilePath));
            String uploadedFileName = command.mainPhoto().getOriginalFilename();

            mainPhotoPath = currentFilePath;
            if (!uploadedFileName.equals(currentFileName)) {
                // メイン写真のベースパスを取得
                String basePath = imageStoragePath.userMainPhotoPath();
                // メイン写真の画像アップロード
                mainPhotoPath = imageStorage.imageUpload(command.mainPhoto(), basePath);
                //古いファイルは削除
                if (currentFilePath != null) {
                    imageStorage.deleteImage(currentFilePath);
                }
            }
        }

        Profile profile = userProfileRepository.findProfileByUserId(userId)
            .orElseThrow(() -> new ResourceNotFoundException("ユーザーのプロフィール"));

        // nullでない場合、サブ写真の登録処理（アップロード）
        if (command.subPhoto() != null && !command.subPhoto().isEmpty()) {
            subPhotoUseCase.registerSubPhoto(profile, command.subPhoto());
        }

        user.update(
            command.name(),
            command.address(),
            mainPhotoPath
        );

        profile.update(
            command.introduction(),
            command.height(),
            command.bodyShape(),
            command.annualIncome(),
            command.bloodType(),
            command.hometown(),
            command.communicationStyle(),
            command.occupation(),
            command.education(),
            command.smoking(),
            command.alcohol(),
            command.holiday(),
            command.sunnyDayHobbies(),
            command.rainyDayHobbies()
        );

        userProfileRepository.saveUser(user);
        userProfileRepository.saveProfile(profile);
    }
}

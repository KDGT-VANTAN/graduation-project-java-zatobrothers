package com.reimi.reimi_app.infrastructure.storage.image;

import org.springframework.stereotype.Component;

import com.reimi.reimi_app.domain.model.profile.ProfileId;

@Component
public class ImageStoragePath {
    // メイン写真のパス
    public String userMainPhotoPath() {
        return "images/users/mainPhoto";
    }

    // ユーザープロフィールのサブ写真のパス
    public String userProfileSubPhotoPath(ProfileId profileId) {
        return "images/users/profiles/" + profileId + "/subPhotos";
    }
}

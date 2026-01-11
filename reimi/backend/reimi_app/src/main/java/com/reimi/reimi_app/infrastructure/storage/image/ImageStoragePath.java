package com.reimi.reimi_app.infrastructure.storage.image;

import java.util.UUID;

import org.springframework.stereotype.Component;

@Component
public class ImageStoragePath {
    // メイン写真のパス
    public String userMainPhotoPath() {
        return "images/users/mainPhoto";
    }

    // ユーザープロフィールのサブ写真のパス
    public String userProfileSubPhotoPath(UUID profileId) {
        return "images/users/profiles/" + profileId + "/subPhotos";
    }
}

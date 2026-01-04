package com.reimi.reimi_app.infrastructure.storage.image;

import org.springframework.stereotype.Component;

@Component
public class ImageStoragePath {
    public String userMainPhotoPath() {
        return "images/users/mainPhoto";
    }
}

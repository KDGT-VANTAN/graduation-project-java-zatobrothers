package com.reimi.reimi_app.infrastructure.storage.image;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import com.google.cloud.storage.Bucket;
import com.reimi.reimi_app.application.exception.client.InvalidRequestException;
import com.reimi.reimi_app.infrastructure.storage.AbstractFirebaseStorage;

@Component
public class ImageStorageComponent extends AbstractFirebaseStorage {

    public ImageStorageComponent (Bucket bucket) {
        super(bucket);
    }

    public String imageUpload(MultipartFile file, String basePath) {
        return upload(file, basePath, this::validateImage);
    }

    public String getSignedUrl(String objectPath) {
        return signedUrl(objectPath);
    }

    private void validateImage(MultipartFile file) {
        if (file == null || file.isEmpty()) {
            throw new InvalidRequestException("画像ファイルが空です");
        }
        if (file.getContentType() == null || !file.getContentType().startsWith("image/")) {
            throw new InvalidRequestException("画像ファイルのみアップロード可能です");
        }
    }
}


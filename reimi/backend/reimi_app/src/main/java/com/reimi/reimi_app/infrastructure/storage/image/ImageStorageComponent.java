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

    public String removeUuidPrefix(String fileName) {
        int underscore = fileName.indexOf('_');

        return underscore == -1 ? fileName : fileName.substring(underscore + 1);
    }

    public String extractFileName(String path) {
        if (path == null) return null;
        int lastSlash = path.lastIndexOf('/');
        return lastSlash == -1 ? path : path.substring(lastSlash + 1);
    }

    public void deleteImage(String objectPath) {
        if (objectPath == null || objectPath.isEmpty()) return;

        try {
            boolean deleted = bucket.get(objectPath) != null && bucket.get(objectPath).delete();
            if (!deleted) {
                System.out.println("Storage 上にファイルが存在しません: " + objectPath);
            }
        } catch (Exception e) {
            System.err.println("ファイル削除に失敗: " + objectPath);
            e.printStackTrace();
        }
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


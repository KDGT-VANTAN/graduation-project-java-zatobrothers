package com.reimi.reimi_app.infrastructure.storage;

import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

import com.google.cloud.storage.Bucket;
import com.reimi.reimi_app.application.exception.client.InvalidRequestException;

public abstract class AbstractFirebaseStorage {

    protected final Bucket bucket;

    protected AbstractFirebaseStorage(Bucket bucket) {
        this.bucket = bucket;
    }

    protected String upload(
        MultipartFile file,
        String basePath,
        ContentTypeValidator validator
    ) {
        validator.validate(file);

        // 元のファイル名を取得
        String originalFileName = file.getOriginalFilename();

        // 保存用のファイル名に変換
        String filename = UUID.randomUUID() + "_" + originalFileName;
        String fullPath = basePath + "/" + filename;

        try {
            bucket.create(
                fullPath,
                file.getBytes(),
                file.getContentType()
            );
        } catch (IOException e) {
            throw new InvalidRequestException("画像のアップロードに失敗しました");
        }

        return fullPath;
    }

    @FunctionalInterface
    protected interface ContentTypeValidator {
        void validate(MultipartFile file);
    }

}

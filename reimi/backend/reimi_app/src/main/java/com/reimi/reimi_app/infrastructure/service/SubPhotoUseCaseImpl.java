package com.reimi.reimi_app.infrastructure.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.reimi.reimi_app.application.exception.client.InvalidRequestException;
import com.reimi.reimi_app.application.usecase.SubPhotoUseCase;
import com.reimi.reimi_app.domain.model.profile.Profile;
import com.reimi.reimi_app.domain.model.subphoto.SubPhoto;
import com.reimi.reimi_app.domain.repository.SubPhotoRepository;
import com.reimi.reimi_app.infrastructure.storage.image.ImageStorageComponent;
import com.reimi.reimi_app.infrastructure.storage.image.ImageStoragePath;

@Service
public class SubPhotoUseCaseImpl implements SubPhotoUseCase {

    private final ImageStorageComponent imageStorage;
    private final ImageStoragePath imageStoragePath;
    private final SubPhotoRepository subPhotoRepository;


    public SubPhotoUseCaseImpl(
        ImageStorageComponent imageStorage,
        ImageStoragePath imageStoragePath,
        SubPhotoRepository subPhotoRepository
    ) {
        this.imageStorage = imageStorage;
        this.imageStoragePath = imageStoragePath;
        this.subPhotoRepository = subPhotoRepository;
    }
    @Override
    @Transactional
    public void registerSubPhoto(Profile profile, List<MultipartFile> subPhotoFiles) {

        // 最大6枚までサブ写真を登録できる
        int limit = 6;

        List<SubPhoto> existing = subPhotoRepository.findAllSubPhotos(profile.getId());
        int remaining = limit - existing.size();

        if (remaining <= 0) {
            throw new InvalidRequestException("サブ写真は最大6枚までです");
        }

        if (subPhotoFiles.size() > remaining) {
            throw new InvalidRequestException(
                "追加できるのは残り " + remaining + " 枚までです"
            );
        }

        // サブ写真のベースパスを取得
        String subPhotoBasePath = imageStoragePath.userProfileSubPhotoPath(profile.getId());
        int sortOrder = existing.isEmpty() ? 1 : existing.get(existing.size() - 1).getSortOrder() + 1;

        for (MultipartFile file : subPhotoFiles) {
            String photoUrl = imageStorage.imageUpload(file, subPhotoBasePath);
            SubPhoto subPhoto = SubPhoto.create(
                profile.getId(),
                photoUrl,
                sortOrder++
            );
            subPhotoRepository.save(subPhoto);
        }
    }
}

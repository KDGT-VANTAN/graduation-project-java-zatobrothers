package com.reimi.reimi_app.application.usecase;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.reimi.reimi_app.domain.model.profile.Profile;

public interface SubPhotoUseCase {

    void registerSubPhoto(Profile profile, List<MultipartFile> subPhotoFiles);
}

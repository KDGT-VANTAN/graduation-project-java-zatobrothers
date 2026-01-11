package com.reimi.reimi_app.domain.model.subphoto;

import java.util.UUID;

import com.reimi.reimi_app.domain.shared.identity.UuidGenerator;

public record SubPhotoId(UUID value) {
    public static SubPhotoId generate() {
        return new SubPhotoId(UuidGenerator.generate());
    }
}

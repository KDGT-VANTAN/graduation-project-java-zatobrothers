package com.reimi.reimi_app.infrastructure.persistence.mapper;

import com.reimi.reimi_app.domain.model.profile.ProfileId;
import com.reimi.reimi_app.domain.model.subphoto.SubPhoto;
import com.reimi.reimi_app.domain.model.subphoto.SubPhotoId;
import com.reimi.reimi_app.infrastructure.persistence.entity.ProfileEntity;
import com.reimi.reimi_app.infrastructure.persistence.entity.SubPhotoEntity;

public class SubPhotoMapper {

    public static SubPhoto toDomain(SubPhotoEntity entity) {
        return SubPhoto.reconstruct(
                new SubPhotoId(entity.getId()),
                new ProfileId(entity.getProfileId()),
                entity.getPhotoUrl(),
                entity.getSortOrder()
        );
    }

    public static SubPhotoEntity toEntity(SubPhoto subPhoto, ProfileEntity profileEntity) {
        SubPhotoEntity entity = new SubPhotoEntity();
        entity.setId(subPhoto.getId().value());
        entity.setProfileId(profileEntity.getId());
        entity.setProfile(profileEntity);
        entity.setPhotoUrl(subPhoto.getPhotoUrl());
        entity.setSortOrder(subPhoto.getSortOrder());

        return entity;
    }
}

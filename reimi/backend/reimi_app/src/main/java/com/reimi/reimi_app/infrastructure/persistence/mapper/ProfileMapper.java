package com.reimi.reimi_app.infrastructure.persistence.mapper;

import com.reimi.reimi_app.domain.model.profile.Profile;
import com.reimi.reimi_app.domain.model.user.UserId;
import com.reimi.reimi_app.infrastructure.persistence.entity.ProfileEntity;
import com.reimi.reimi_app.infrastructure.persistence.entity.UserEntity;

public class ProfileMapper {

    public static Profile toDomain(ProfileEntity entity) {
        return Profile.reconstruct(
                new UserId(entity.getUserId()),
                entity.getIntroduction()
        );
    }
    public static ProfileEntity toEntity(Profile profile, UserEntity userEntity) {
        ProfileEntity entity = new ProfileEntity();
        entity.setUser(userEntity);
        entity.setIntroduction(profile.getIntroduction());

        return entity;
    }
}

package com.reimi.reimi_app.infrastructure.persistence.mapper;

import com.reimi.reimi_app.domain.model.user.User;
import com.reimi.reimi_app.domain.model.user.UserId;
import com.reimi.reimi_app.infrastructure.persistence.entity.UserEntity;

public class UserMapper {

    public static User toDomain(UserEntity entity) {
        return User.reconstruct(
                new UserId(entity.getId()),
                entity.getFirebaseUid(),
                entity.getName(),
                entity.getGender(),
                entity.getBirthDate(),
                entity.getAddress(),
                entity.getMainPhotoUrl(),
                entity.getEmail(),
                entity.getStatus(),
                ProfileMapper.toDomain(entity.getProfile())
        );
    }

    public static UserEntity toEntity(User user) {
        UserEntity entity = new UserEntity();
        entity.setId(user.getId().value());
        entity.setFirebaseUid(user.getFirebaseUid());
        entity.setName(user.getName());
        entity.setGender(user.getGender());
        entity.setBirthDate(user.getBirthDate());
        entity.setAddress(user.getAddress());
        entity.setMainPhotoUrl(user.getMainPhotoUrl());
        entity.setEmail(user.getEmail());
        entity.setStatus(user.getStatus());
        entity.setProfile(ProfileMapper.toEntity(user.getProfile(), entity));

        return entity;
    }

    public static UserEntity toUpdateEntity(User user ,UserEntity entity) {
        entity.setName(user.getName());
        entity.setAddress(user.getAddress());
        entity.setMainPhotoUrl(user.getMainPhotoUrl());

        return entity;
    }
}

package com.reimi.reimi_app.infrastructure.persistence.mapper;

import com.reimi.reimi_app.domain.model.user.User;
import com.reimi.reimi_app.infrastructure.persistence.user.UserEntity;

public class UserMapper {

    public static UserEntity toEntity(User user) {
        UserEntity entity = new UserEntity();
        entity.setId(user.Id().value());
        entity.setFirebaseUid(user.getFirebaseUid());
        entity.setName(user.getName());
        entity.setGender(user.getGender());
        entity.setBirthDate(user.getBirthDate());
        entity.setAddress(user.getAddress());
        entity.setMainPhotoUrl(user.getMainPhotoUrl());
        entity.setEmail(user.getEmail());
        entity.setStatus(user.getStatus());

        return entity;
    }
}

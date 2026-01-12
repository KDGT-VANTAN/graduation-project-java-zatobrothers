package com.reimi.reimi_app.infrastructure.persistence.mapper;

import com.reimi.reimi_app.domain.model.like.Like;
import com.reimi.reimi_app.infrastructure.persistence.entity.LikeEntity;

public class LikeMapper {

    public static LikeEntity toEntity(Like like) {
        LikeEntity entity = new LikeEntity();
        entity.setId(like.getId().value());
        entity.setFromUserId(like.getFromUserId().value());
        entity.setToUserId(like.getToUserId().value());

        return entity;
    }
}

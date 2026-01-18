package com.reimi.reimi_app.infrastructure.persistence.mapper;

import com.reimi.reimi_app.domain.model.rainbowlike.RainbowLike;
import com.reimi.reimi_app.infrastructure.persistence.entity.RainbowLikeEntity;

public class RainbowLikeMapper {

        public static RainbowLikeEntity toEntity(RainbowLike rainbowLike) {
        RainbowLikeEntity entity = new RainbowLikeEntity();
        entity.setId(rainbowLike.getId().value());
        entity.setFromUserId(rainbowLike.getFromUserId().value());
        entity.setToUserId(rainbowLike.getToUserId().value());
        entity.setMessage(rainbowLike.getMessage());

        return entity;
    }
}

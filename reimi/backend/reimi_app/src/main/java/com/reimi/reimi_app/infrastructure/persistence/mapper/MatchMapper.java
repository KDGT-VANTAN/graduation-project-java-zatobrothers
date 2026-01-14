package com.reimi.reimi_app.infrastructure.persistence.mapper;

import com.reimi.reimi_app.domain.model.match.Match;
import com.reimi.reimi_app.infrastructure.persistence.entity.MatchEntity;

public class MatchMapper {

    public static MatchEntity toEntity(Match match) {
        MatchEntity entity = new MatchEntity();
        entity.setId(match.getId().value());
        entity.setUserAId(match.getUserAId().value());
        entity.setUserBId(match.getUserBId().value());
        entity.setActive(match.getIsActive());

        return entity;
    }
}

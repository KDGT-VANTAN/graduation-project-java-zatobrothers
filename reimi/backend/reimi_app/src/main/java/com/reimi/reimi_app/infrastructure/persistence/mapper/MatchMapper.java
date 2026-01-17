package com.reimi.reimi_app.infrastructure.persistence.mapper;

import com.reimi.reimi_app.domain.model.match.Match;
import com.reimi.reimi_app.domain.model.match.MatchId;
import com.reimi.reimi_app.domain.model.user.UserId;
import com.reimi.reimi_app.infrastructure.persistence.entity.MatchEntity;

public class MatchMapper {

    public static Match toDomain(MatchEntity entity) {
        return Match.reconstruct(
                new MatchId(entity.getId()),
                new UserId(entity.getUserAId()),
                new UserId(entity.getUserBId()),
                entity.isActive()
        );
    }

    public static MatchEntity toEntity(Match match) {
        MatchEntity entity = new MatchEntity();
        entity.setId(match.getId().value());
        entity.setUserAId(match.getUserAId().value());
        entity.setUserBId(match.getUserBId().value());
        entity.setActive(match.getIsActive());

        return entity;
    }
}

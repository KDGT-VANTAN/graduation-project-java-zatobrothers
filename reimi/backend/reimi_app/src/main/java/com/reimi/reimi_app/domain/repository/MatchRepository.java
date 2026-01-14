package com.reimi.reimi_app.domain.repository;

import com.reimi.reimi_app.domain.model.match.Match;
import com.reimi.reimi_app.domain.model.user.UserId;

public interface MatchRepository {

    boolean exists(UserId userAId, UserId userBId);

    void save(Match match);
}
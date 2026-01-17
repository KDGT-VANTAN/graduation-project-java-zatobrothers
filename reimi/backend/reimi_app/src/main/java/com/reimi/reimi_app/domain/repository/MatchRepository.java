package com.reimi.reimi_app.domain.repository;

import java.util.List;
import java.util.Optional;

import com.reimi.reimi_app.domain.model.match.Match;
import com.reimi.reimi_app.domain.model.match.MatchId;
import com.reimi.reimi_app.domain.model.user.UserId;

public interface MatchRepository {

    boolean exists(UserId userAId, UserId userBId);

    void save(Match match);

    List<UserId> findMatchedUserIdsByUserId(UserId userId);

    Optional<Match> findByMatchId(MatchId matchId);
}
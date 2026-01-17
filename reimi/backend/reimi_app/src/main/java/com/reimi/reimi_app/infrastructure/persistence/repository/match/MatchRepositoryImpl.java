package com.reimi.reimi_app.infrastructure.persistence.repository.match;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Repository;

import com.reimi.reimi_app.domain.model.match.Match;
import com.reimi.reimi_app.domain.model.match.MatchId;
import com.reimi.reimi_app.domain.model.user.UserId;
import com.reimi.reimi_app.domain.repository.MatchRepository;
import com.reimi.reimi_app.infrastructure.persistence.mapper.MatchMapper;

@Repository
public class MatchRepositoryImpl implements MatchRepository {

    private final JpaMatchRepository jpaMatchRepository;

    public MatchRepositoryImpl(
        JpaMatchRepository jpaMatchRepository
    ) {
        this.jpaMatchRepository = jpaMatchRepository;
    }

    @Override
    public boolean exists(UserId userAId, UserId userBId) {
        return jpaMatchRepository.existsByUserAIdAndUserBId(
            userAId.value(),
            userBId.value()
        );
    }

    @Override
    public void save(Match match) {
        jpaMatchRepository.save(MatchMapper.toEntity(match));
    }

    @Override
    public List<UserId> findMatchedUserIdsByUserId(UserId userId) {
        return jpaMatchRepository.findMatchedUserIds(userId.value())
            .stream()
            .map(UserId::new)
            .toList();
    }

    @Override
    public Optional<Match> findByMatchId(MatchId matchId) {
        return jpaMatchRepository
            .findById(matchId.value())
            .map(MatchMapper::toDomain);
    }

}

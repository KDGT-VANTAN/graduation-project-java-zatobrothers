package com.reimi.reimi_app.infrastructure.persistence.repository.like;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.reimi.reimi_app.domain.model.like.Like;
import com.reimi.reimi_app.domain.model.user.UserId;
import com.reimi.reimi_app.domain.repository.LikeRepository;
import com.reimi.reimi_app.infrastructure.persistence.mapper.LikeMapper;

@Repository
public class LikeRepositoryImpl implements LikeRepository {

    private final JpaLikeRepository jpaLikeRepository;

    public LikeRepositoryImpl(
        JpaLikeRepository jpaLikeRepository
    ) {
        this.jpaLikeRepository = jpaLikeRepository;
    }

    @Override
    public boolean exists(UserId fromUserId, UserId toUserId) {
        return jpaLikeRepository.existsByFromUserIdAndToUserId(
            fromUserId.value(),
            toUserId.value()
        );
    }

    @Override
    public void save(Like like) {
        jpaLikeRepository.save(LikeMapper.toEntity(like));
    }

    @Override
    public List<UserId> findLikeGivenUserIdsByFromUserId(UserId fromUserId) {
        return jpaLikeRepository
            .findToUserIdsByFromUserId(fromUserId.value())
            .stream()
            .map(UserId::new)
            .toList();
    }

    @Override
    public List<UserId> findLikeReceivedUserIdsByToUserId(UserId toUserId) {
        return jpaLikeRepository
            .findFromUserIdsByToUserId(toUserId.value())
            .stream()
            .map(UserId::new)
            .toList();
    }
}

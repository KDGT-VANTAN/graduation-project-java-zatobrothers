package com.reimi.reimi_app.infrastructure.persistence.repository.like;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Repository;

import com.reimi.reimi_app.domain.model.like.Like;
import com.reimi.reimi_app.domain.model.user.User;
import com.reimi.reimi_app.domain.model.user.UserId;
import com.reimi.reimi_app.domain.repository.LikeRepository;
import com.reimi.reimi_app.infrastructure.persistence.mapper.LikeMapper;
import com.reimi.reimi_app.infrastructure.persistence.mapper.UserMapper;
import com.reimi.reimi_app.infrastructure.persistence.repository.user.JpaUserRepository;

@Repository
public class LikeRepositoryImpl implements LikeRepository {

    private final JpaLikeRepository jpaLikeRepository;
    private final JpaUserRepository jpaUserRepository;

    public LikeRepositoryImpl(
        JpaLikeRepository jpaLikeRepository,
        JpaUserRepository jpaUserRepository
    ) {
        this.jpaLikeRepository = jpaLikeRepository;
        this.jpaUserRepository = jpaUserRepository;
    }

    @Override
    public Optional<User> findUserByUserId(UserId userId) {
        return jpaUserRepository
            .findById(userId.value())
            .map(UserMapper::toDomain);
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

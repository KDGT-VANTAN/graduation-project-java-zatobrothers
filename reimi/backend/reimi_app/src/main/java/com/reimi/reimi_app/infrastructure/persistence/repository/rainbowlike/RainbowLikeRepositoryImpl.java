package com.reimi.reimi_app.infrastructure.persistence.repository.rainbowlike;

import org.springframework.stereotype.Repository;

import com.reimi.reimi_app.domain.model.rainbowlike.RainbowLike;
import com.reimi.reimi_app.domain.model.user.UserId;
import com.reimi.reimi_app.domain.repository.RainbowLikeRepository;
import com.reimi.reimi_app.infrastructure.persistence.mapper.RainbowLikeMapper;

@Repository
public class RainbowLikeRepositoryImpl implements RainbowLikeRepository {

    private final JpaRainbowLikeRepository jpaRainbowLikeRepository;

    public RainbowLikeRepositoryImpl(
        JpaRainbowLikeRepository jpaRainbowLikeRepository
    ) {
        this.jpaRainbowLikeRepository = jpaRainbowLikeRepository;
    }

    @Override
    public boolean exists(UserId fromUserId, UserId toUserId) {
        return jpaRainbowLikeRepository.existsByFromUserIdAndToUserId(
            fromUserId.value(),
            toUserId.value()
        );
    }

    @Override
    public void save(RainbowLike rainbowLike) {
        jpaRainbowLikeRepository.save(RainbowLikeMapper.toEntity(rainbowLike));
    }
}

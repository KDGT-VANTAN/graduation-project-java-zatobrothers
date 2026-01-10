package com.reimi.reimi_app.infrastructure.persistence.repository.profile;

import java.util.Optional;

import org.springframework.stereotype.Repository;

import com.reimi.reimi_app.application.exception.client.ResourceNotFoundException;
import com.reimi.reimi_app.domain.model.profile.Profile;
import com.reimi.reimi_app.domain.model.user.User;
import com.reimi.reimi_app.domain.model.user.UserId;
import com.reimi.reimi_app.domain.repository.UserProfileRepository;
import com.reimi.reimi_app.infrastructure.persistence.entity.ProfileEntity;
import com.reimi.reimi_app.infrastructure.persistence.entity.UserEntity;
import com.reimi.reimi_app.infrastructure.persistence.mapper.ProfileMapper;
import com.reimi.reimi_app.infrastructure.persistence.mapper.UserMapper;
import com.reimi.reimi_app.infrastructure.persistence.repository.user.JpaUserRepository;

@Repository
public class UserProfileRepositoryImpl implements UserProfileRepository {

    private final JpaUserRepository jpaUserRepository;
    private final JpaProfileRepository jpaProfileRepository;

    public UserProfileRepositoryImpl(
        JpaUserRepository jpaUserRepository,
        JpaProfileRepository jpaProfileRepository
    ) {
        this.jpaUserRepository = jpaUserRepository;
        this.jpaProfileRepository = jpaProfileRepository;
    }

    @Override
    public Optional<User> findUserByUserId(UserId userId) {
        return jpaUserRepository
            .findById(userId.value())
            .map(UserMapper::toDomain);
    }

    @Override
    public Optional<Profile> findProfileByUserId(UserId userId) {
        return jpaProfileRepository
            .findById(userId.value())
            .map(ProfileMapper::toDomain);
    }

    @Override
    public void saveUser(User user) {
        UserEntity entity = jpaUserRepository
            .findById(user.getId().value())
            .orElseThrow(() -> new ResourceNotFoundException("プロフィール"));
        jpaUserRepository.save(UserMapper.toUpdateEntity(user, entity));
    }

    @Override
    public void saveProfile(Profile profile) {

        ProfileEntity entity = jpaProfileRepository
            .findById(profile.getUserId().value())
            .orElseThrow(() -> new ResourceNotFoundException("プロフィール"));

        jpaProfileRepository.save(ProfileMapper.toUpdateEntity(profile, entity));
    }
}

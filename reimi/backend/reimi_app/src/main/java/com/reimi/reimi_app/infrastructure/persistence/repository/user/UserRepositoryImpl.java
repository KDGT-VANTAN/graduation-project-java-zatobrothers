package com.reimi.reimi_app.infrastructure.persistence.repository.user;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

import org.springframework.stereotype.Repository;

import com.reimi.reimi_app.domain.model.user.User;
import com.reimi.reimi_app.domain.model.user.UserId;
import com.reimi.reimi_app.domain.repository.UserRepository;
import com.reimi.reimi_app.infrastructure.persistence.mapper.UserMapper;

@Repository
public class UserRepositoryImpl implements UserRepository {

    private final JpaUserRepository jpaUserRepository;

    public UserRepositoryImpl(JpaUserRepository jpaUserRepository) {
        this.jpaUserRepository = jpaUserRepository;
    }

    @Override
    public Optional<User> findMeByFirebaseUid(String firebaseUid) {
        return jpaUserRepository.findByFirebaseUid(firebaseUid)
            .map(UserMapper::toDomain);
    }

    @Override
    public List<User> findAllUserExcludingMeByFirebaseUid(String firebaseUid) {
        return jpaUserRepository.findByFirebaseUidNot(firebaseUid)
            .stream()
            .map(UserMapper::toDomain)
            .toList();
    }

    @Override
    public List<User> findByIds(List<UserId> userIds) {

        List<UUID> uuids = userIds.stream()
            .map(UserId::value)
            .toList();

        return jpaUserRepository.findByIdIn(uuids)
            .stream()
            .map(UserMapper::toDomain)
            .toList();
    }

    @Override
    public boolean existsByFirebaseUid(String firebaseUid) {
        return jpaUserRepository.existsByFirebaseUid(firebaseUid);
    }

    @Override
    public boolean existsByEmail(String email) {
        return jpaUserRepository.existsByEmail(email);
    }

    @Override
    public void save(User user) {
        jpaUserRepository.save(UserMapper.toEntity(user));
    }

    @Override
    public Optional<User> findUserByUserId(UserId userId) {
        return jpaUserRepository
            .findById(userId.value())
            .map(UserMapper::toDomain);
    }
}

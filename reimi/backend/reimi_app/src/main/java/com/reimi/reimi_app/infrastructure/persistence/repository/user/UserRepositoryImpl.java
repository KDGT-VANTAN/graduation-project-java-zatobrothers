package com.reimi.reimi_app.infrastructure.persistence.repository.user;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.reimi.reimi_app.domain.model.user.User;
import com.reimi.reimi_app.domain.repository.UserRepository;
import com.reimi.reimi_app.infrastructure.persistence.mapper.UserMapper;

@Repository
public class UserRepositoryImpl implements UserRepository {

    private final JpaUserRepository jpaUserRepository;

    public UserRepositoryImpl(JpaUserRepository jpaUserRepository) {
        this.jpaUserRepository = jpaUserRepository;
    }

    @Override
    public List<User> findAllExcludingUserFirebaseUid(String firebaseUid) {
        return jpaUserRepository.findByFirebaseUidNot(firebaseUid)
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
}

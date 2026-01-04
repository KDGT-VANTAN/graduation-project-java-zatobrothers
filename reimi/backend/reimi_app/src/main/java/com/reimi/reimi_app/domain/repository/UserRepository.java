package com.reimi.reimi_app.domain.repository;

import java.util.List;
import java.util.Optional;

import com.reimi.reimi_app.domain.model.user.User;

public interface UserRepository {

    Optional<User> findMeByFirebaseUid(String firebaseUid);

    List<User> findAllUserExcludingMeByFirebaseUid(String firebaseUid);

    boolean existsByFirebaseUid(String firebaseUid);

    boolean existsByEmail(String email);

    void save(User user);
}

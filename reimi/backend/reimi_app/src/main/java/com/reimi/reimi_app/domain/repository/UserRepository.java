package com.reimi.reimi_app.domain.repository;

import com.reimi.reimi_app.domain.model.user.User;

public interface UserRepository {

    boolean existsByEmail(String email);

    void save(User user);
}

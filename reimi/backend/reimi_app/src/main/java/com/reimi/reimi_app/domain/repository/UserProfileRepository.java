package com.reimi.reimi_app.domain.repository;

import java.util.Optional;

import com.reimi.reimi_app.domain.model.profile.Profile;
import com.reimi.reimi_app.domain.model.user.User;
import com.reimi.reimi_app.domain.model.user.UserId;

public interface UserProfileRepository {

    Optional<User> findUserByUserId(UserId userId);

    Optional<Profile> findProfileByUserId(UserId userId);
}

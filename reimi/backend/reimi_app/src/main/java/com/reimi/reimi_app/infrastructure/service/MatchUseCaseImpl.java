package com.reimi.reimi_app.infrastructure.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.reimi.reimi_app.application.exception.client.ResourceNotFoundException;
import com.reimi.reimi_app.application.usecase.MatchUseCase;
import com.reimi.reimi_app.domain.model.user.User;
import com.reimi.reimi_app.domain.model.user.UserId;
import com.reimi.reimi_app.domain.repository.MatchRepository;
import com.reimi.reimi_app.domain.repository.UserRepository;
import com.reimi.reimi_app.security.AuthenticatedUserProvider;

@Service
public class MatchUseCaseImpl implements MatchUseCase {

    private final MatchRepository matchRepository;
    private final UserRepository userRepository;
    private final AuthenticatedUserProvider authenticatedUserProvider;

    public MatchUseCaseImpl(
        MatchRepository matchRepository,
        UserRepository userRepository,
        AuthenticatedUserProvider authenticatedUserProvider
    ) {
        this.matchRepository = matchRepository;
        this.userRepository = userRepository;
        this.authenticatedUserProvider = authenticatedUserProvider;
    }

    @Override
    public List<User> getMatchedUserList() {

        String myFirebaseUid = authenticatedUserProvider.getFirebaseUid();

        User user = userRepository.findMeByFirebaseUid(myFirebaseUid)
            .orElseThrow(() -> new ResourceNotFoundException("ユーザー"));

        UserId userId = user.getId();

        List<UserId> matchedUserIds = matchRepository.findMatchedUserIdsByUserId(userId);

        return userRepository.findByIds(matchedUserIds);
    }
}

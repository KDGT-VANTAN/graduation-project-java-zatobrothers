package com.reimi.reimi_app.infrastructure.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.reimi.reimi_app.application.exception.client.LikeAlreadyExistsException;
import com.reimi.reimi_app.application.exception.client.ResourceNotFoundException;
import com.reimi.reimi_app.application.usecase.LikeUseCase;
import com.reimi.reimi_app.domain.model.like.Like;
import com.reimi.reimi_app.domain.model.user.User;
import com.reimi.reimi_app.domain.model.user.UserId;
import com.reimi.reimi_app.domain.repository.LikeRepository;
import com.reimi.reimi_app.domain.repository.UserRepository;
import com.reimi.reimi_app.security.AuthenticatedUserProvider;

@Service
@Transactional
public class LikeUseCaseImpl implements LikeUseCase {

    private final UserRepository userRepository;
    private final LikeRepository likeRepository;
    private final AuthenticatedUserProvider authenticatedUserProvider;

    public LikeUseCaseImpl(
        UserRepository userRepository,
        LikeRepository likeRepository,
        AuthenticatedUserProvider authenticatedUserProvider
    ) {
        this.userRepository = userRepository;
        this.likeRepository = likeRepository;
        this.authenticatedUserProvider = authenticatedUserProvider;
    }

    @Override
    public void likeUser(UserId toUserId) {

        String firebaseUid = authenticatedUserProvider.getFirebaseUid();

        User user = userRepository.findMeByFirebaseUid(firebaseUid)
            .orElseThrow(() -> new ResourceNotFoundException("ユーザー"));

        UserId fromUserId = user.getId();

        if (likeRepository.exists(fromUserId, toUserId)) {
            throw new LikeAlreadyExistsException();
        }

        Like like = Like.create(
            fromUserId,
            toUserId
        );

        likeRepository.save(like);
    }
}

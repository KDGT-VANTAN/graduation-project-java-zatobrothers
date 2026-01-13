package com.reimi.reimi_app.infrastructure.service;

import java.util.List;

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
import com.reimi.reimi_app.infrastructure.storage.image.ImageStorageComponent;
import com.reimi.reimi_app.security.AuthenticatedUserProvider;

@Service
@Transactional
public class LikeUseCaseImpl implements LikeUseCase {

    private final UserRepository userRepository;
    private final LikeRepository likeRepository;
    private final ImageStorageComponent imageStorage;
    private final AuthenticatedUserProvider authenticatedUserProvider;

    public LikeUseCaseImpl(
        UserRepository userRepository,
        LikeRepository likeRepository,
        ImageStorageComponent imageStorage,
        AuthenticatedUserProvider authenticatedUserProvider
    ) {
        this.userRepository = userRepository;
        this.likeRepository = likeRepository;
        this.imageStorage = imageStorage;
        this.authenticatedUserProvider = authenticatedUserProvider;
    }

    @Override
    public void likeUser(UserId UserId) {

        User toUser = likeRepository.findUserByUserId(UserId)
            .orElseThrow(() -> new ResourceNotFoundException("ユーザー"));
        UserId toUserId = toUser.getId();

        String firebaseUid = authenticatedUserProvider.getFirebaseUid();

        User fromUser = userRepository.findMeByFirebaseUid(firebaseUid)
            .orElseThrow(() -> new ResourceNotFoundException("ユーザー"));

        UserId fromUserId = fromUser.getId();

        if (likeRepository.exists(fromUserId, toUserId)) {
            throw new LikeAlreadyExistsException();
        }

        Like like = Like.create(
            fromUserId,
            toUserId
        );

        likeRepository.save(like);
    }

    @Override
    public List<User> getLikeGivenUserList() {

        String myFirebaseUid = authenticatedUserProvider.getFirebaseUid();

        User fromUser = userRepository.findMeByFirebaseUid(myFirebaseUid)
            .orElseThrow(() -> new ResourceNotFoundException("ユーザー"));

        UserId fromUserId = fromUser.getId();

        List<UserId> likedUserIds = likeRepository.findLikeGivenUserIdsByFromUserId(fromUserId);

        if (likedUserIds.isEmpty()) {
            return List.of();
        }

        List<User> users = userRepository.findByIds(likedUserIds);

        for (User user : users) {
            user.setSignedMainPhotoUrl(imageStorage.getSignedUrl(user.getMainPhotoUrl()));
        }

        return users;
    }

    @Override
    public List<User> getLikeReceivedUserList() {

        String myFirebaseUid = authenticatedUserProvider.getFirebaseUid();

        User toUser = userRepository.findMeByFirebaseUid(myFirebaseUid)
            .orElseThrow(() -> new ResourceNotFoundException("ユーザー"));

        UserId toUserId = toUser.getId();

        List<UserId> likedUserIds = likeRepository.findLikeReceivedUserIdsByToUserId(toUserId);

        if (likedUserIds.isEmpty()) {
            return List.of();
        }

        List<User> users = userRepository.findByIds(likedUserIds);

        for (User user : users) {
            user.setSignedMainPhotoUrl(imageStorage.getSignedUrl(user.getMainPhotoUrl()));
        }

        return users;
    }
}

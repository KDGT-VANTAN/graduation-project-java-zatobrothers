package com.reimi.reimi_app.infrastructure.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.reimi.reimi_app.application.command.SendRainbowLikeCommand;
import com.reimi.reimi_app.application.exception.client.InvalidRequestException;
import com.reimi.reimi_app.application.exception.client.LikeAlreadyExistsException;
import com.reimi.reimi_app.application.exception.client.MatchAlreadyExistsException;
import com.reimi.reimi_app.application.exception.client.RainbowLikeAlreadyExistsException;
import com.reimi.reimi_app.application.exception.client.ResourceNotFoundException;
import com.reimi.reimi_app.application.usecase.RainbowLikeUseCase;
import com.reimi.reimi_app.domain.model.chatroom.ChatRoom;
import com.reimi.reimi_app.domain.model.match.Match;
import com.reimi.reimi_app.domain.model.rainbowlike.RainbowLike;
import com.reimi.reimi_app.domain.model.user.User;
import com.reimi.reimi_app.domain.model.user.UserId;
import com.reimi.reimi_app.domain.repository.ChatRoomRepository;
import com.reimi.reimi_app.domain.repository.LikeRepository;
import com.reimi.reimi_app.domain.repository.MatchRepository;
import com.reimi.reimi_app.domain.repository.RainbowLikeRepository;
import com.reimi.reimi_app.domain.repository.UserRepository;
import com.reimi.reimi_app.infrastructure.storage.image.ImageStorageComponent;
import com.reimi.reimi_app.security.AuthenticatedUserProvider;

@Service
@Transactional
public class RainbowLikeUseCaseImpl implements RainbowLikeUseCase {

    private final UserRepository userRepository;
    private final RainbowLikeRepository rainbowLikeRepository;
    private final LikeRepository likeRepository;
    private final MatchRepository matchRepository;
    private final ChatRoomRepository chatRoomRepository;
    private final AuthenticatedUserProvider authenticatedUserProvider;

    public RainbowLikeUseCaseImpl(
        UserRepository userRepository,
        RainbowLikeRepository rainbowLikeRepository,
        LikeRepository likeRepository,
        MatchRepository matchRepository,
        ChatRoomRepository chatRoomRepository,
        ImageStorageComponent imageStorage,
        AuthenticatedUserProvider authenticatedUserProvider
    ) {
        this.userRepository = userRepository;
        this.rainbowLikeRepository = rainbowLikeRepository;
        this.likeRepository = likeRepository;
        this.matchRepository = matchRepository;
        this.chatRoomRepository = chatRoomRepository;
        this.authenticatedUserProvider = authenticatedUserProvider;
    }

    @Override
    public void rainbowLikeUser(SendRainbowLikeCommand command) {

        if (command.message() == null || command.message().isBlank()) {
            throw new InvalidRequestException("メッセージは必須です");
        }

        User toUser = userRepository.findUserByUserId(command.toUserId())
            .orElseThrow(() -> new ResourceNotFoundException("ユーザー"));
        UserId toUserId = toUser.getId();

        String firebaseUid = authenticatedUserProvider.getFirebaseUid();

        User fromUser = userRepository.findMeByFirebaseUid(firebaseUid)
            .orElseThrow(() -> new ResourceNotFoundException("ユーザー"));

        UserId fromUserId = fromUser.getId();

        // いいねとレインボーいいねを両方送ることはできない
        // 既にいいねが送信されている場合は重複エラーとする
        if (likeRepository.exists(fromUserId, toUserId)) {
            throw new LikeAlreadyExistsException();
        }
        // 既にいいねを受信している場合は無効なリクエストとする
        if (likeRepository.exists(toUserId, fromUserId)) {
            throw new InvalidRequestException("既にいいねを受信しています");
        }

        //二重送信の防止
        if (rainbowLikeRepository.exists(fromUserId, toUserId)) {
            throw new RainbowLikeAlreadyExistsException();
        }

        RainbowLike rainbowLike = RainbowLike.create(
            fromUserId,
            toUserId,
            command.message()
        );

        rainbowLikeRepository.save(rainbowLike);

        handleMatching(fromUserId, toUserId);
    }

    private void handleMatching(UserId fromUserId, UserId toUserId) {

        // 逆方向レインボーいいね確認
        // 存在していた場合、マッチングが成立する
        if (!rainbowLikeRepository.exists(toUserId, fromUserId)) { return; }

        // 正規化（必ずUUIDの値が小さい方からA・Bになる）
        UserId userAId = fromUserId.value().compareTo(toUserId.value()) < 0 ? fromUserId : toUserId;
        UserId userBId = fromUserId.value().compareTo(toUserId.value()) < 0 ? toUserId : fromUserId;

        if (matchRepository.exists(userAId, userBId)) {
            throw new MatchAlreadyExistsException();
        }

        Match match = Match.create(userAId, userBId);
        matchRepository.save(match);

        ChatRoom chatRoom = ChatRoom.create(match.getId());
        chatRoomRepository.save(chatRoom);
    }
}

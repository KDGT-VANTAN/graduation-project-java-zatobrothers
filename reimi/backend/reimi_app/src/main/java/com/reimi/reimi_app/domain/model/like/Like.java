package com.reimi.reimi_app.domain.model.like;

import com.reimi.reimi_app.application.exception.client.InvalidRequestException;
import com.reimi.reimi_app.domain.model.user.UserId;

public class Like {

    private final LikeId id;
    private final UserId fromUserId;
    private final UserId toUserId;

    private Like(
        LikeId id,
        UserId fromUserId,
        UserId toUserId
    ) {
        if (fromUserId.equals(toUserId)) {
            throw new InvalidRequestException("ユーザー自身にはいいねできません");
        }
        this.id = id;
        this.fromUserId = fromUserId;
        this.toUserId = toUserId;
    }

    public static Like create(
        UserId fromUserId,
        UserId toUserId
    ) {
        LikeId likeId = LikeId.generate();
        return new Like(
            likeId,
            fromUserId,
            toUserId
        );
    }

    public LikeId getId() { return id; }
    public UserId getFromUserId() { return fromUserId; }
    public UserId getToUserId() { return toUserId; }

}

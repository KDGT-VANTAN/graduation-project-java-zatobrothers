package com.reimi.reimi_app.domain.model.rainbowlike;

import com.reimi.reimi_app.application.exception.client.InvalidRequestException;
import com.reimi.reimi_app.domain.model.user.UserId;

public class RainbowLike {

    private final RainbowLikeId id;
    private final UserId fromUserId;
    private final UserId toUserId;
    private final String message;

    private RainbowLike(
        RainbowLikeId id,
        UserId fromUserId,
        UserId toUserId,
        String message
    ) {
        if (fromUserId.equals(toUserId)) {
            throw new InvalidRequestException("ユーザー自身にはレインボーいいねできません");
        }
        this.id = id;
        this.fromUserId = fromUserId;
        this.toUserId = toUserId;
        this.message = message;
    }

    public static RainbowLike create(
        UserId fromUserId,
        UserId toUserId,
        String message
    ) {
        RainbowLikeId rainbowLikeId = RainbowLikeId.generate();
        return new RainbowLike(
            rainbowLikeId,
            fromUserId,
            toUserId,
            message
        );
    }

    public RainbowLikeId getId() { return id; }
    public UserId getFromUserId() { return fromUserId; }
    public UserId getToUserId() { return toUserId; }
    public String getMessage() { return message; }
}

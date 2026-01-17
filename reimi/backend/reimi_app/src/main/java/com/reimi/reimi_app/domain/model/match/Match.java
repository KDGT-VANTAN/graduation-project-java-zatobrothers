package com.reimi.reimi_app.domain.model.match;

import com.reimi.reimi_app.domain.model.user.UserId;

public class Match {

    private final MatchId id;
    private final UserId userAId;
    private final UserId userBId;
    private boolean isActive;

    private Match(
        MatchId id,
        UserId userAId,
        UserId userBId,
        boolean isActive
    ) {
        if (userAId.equals(userBId)) {
            throw new IllegalArgumentException("同じユーザー同士ではマッチングできません");
        }
        this.id = id;
        this.userAId = userAId;
        this.userBId = userBId;
        this.isActive = isActive;
    }

    public static Match create(
        UserId userAId,
        UserId userBId
    ) {
        MatchId matchId = MatchId.generate();
        UserId userA = userAId.value().compareTo(userBId.value()) < 0 ? userAId : userBId;
        UserId userB = userAId.value().compareTo(userBId.value()) < 0 ? userBId : userAId;
        return new Match(
            matchId,
            userA,
            userB,
            true
        );
    }

    public static Match reconstruct(
        MatchId id,
        UserId userAId,
        UserId userBId,
        boolean isActive
    ) {
        return new Match(
                id,
                userAId,
                userBId,
                isActive
        );
    }

    public boolean isParticipant(UserId userId) {
        return userAId.equals(userId) || userBId.equals(userId);
    }

    public MatchId getId() { return id; }
    public UserId getUserAId() { return userAId; }
    public UserId getUserBId() { return userBId; }
    public boolean getIsActive() { return isActive; }
}

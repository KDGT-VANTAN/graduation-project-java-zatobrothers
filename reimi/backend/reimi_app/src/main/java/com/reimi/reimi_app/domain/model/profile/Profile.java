package com.reimi.reimi_app.domain.model.profile;

import com.reimi.reimi_app.domain.model.user.UserId;

public class Profile {

    private final UserId userId;

    private final String introduction;

    private Profile(UserId userId, String introduction) {
        if (introduction == null || introduction.length() < 20 || introduction.length() > 500) {
            throw new IllegalArgumentException("自己紹介文は20〜500文字である必要があります");
        }
        this.userId = userId;
        this.introduction = introduction;
    }
    public static Profile create(
        UserId userId,
        String introduction
    ) {
        return new Profile(
            userId,
            introduction
        );
    }

    public static Profile reconstruct(
        UserId userId,
        String introduction
    ) {
        return new Profile(
                userId,
                introduction
        );
    }

    public UserId getUserId() { return userId; }
    public String getIntroduction() { return introduction; }

}

package com.reimi.reimi_app.domain.model.profile;

import com.reimi.reimi_app.domain.model.user.UserId;

public class Profile {

    private final UserId user_id;

    private final String introduction;

    private Profile(UserId user_id, String introduction) {
        this.user_id = user_id;
        this.introduction = introduction;
    }
    public static Profile create(UserId user_id, String introduction) {
        return new Profile(user_id, introduction);
    }

    public UserId getUserId() { return user_id; }
    public String getIntroduction() { return introduction; }

}

package com.reimi.reimi_app.domain.repository;

import java.util.List;

import com.reimi.reimi_app.domain.model.item.UserItem;
import com.reimi.reimi_app.domain.model.user.UserId;

public interface UserItemRepository {

    void save(UserItem userItem);

    List<UserItem> findByUserId(UserId userId);
}

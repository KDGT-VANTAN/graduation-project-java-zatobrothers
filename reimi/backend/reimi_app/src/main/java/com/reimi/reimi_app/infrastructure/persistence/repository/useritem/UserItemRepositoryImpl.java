package com.reimi.reimi_app.infrastructure.persistence.repository.useritem;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.reimi.reimi_app.domain.model.item.UserItem;
import com.reimi.reimi_app.domain.model.user.UserId;
import com.reimi.reimi_app.domain.repository.UserItemRepository;
import com.reimi.reimi_app.infrastructure.persistence.mapper.UserItemMapper;

@Repository
public class UserItemRepositoryImpl implements UserItemRepository {

    private final JpaUserItemRepository jpaUserItemRepository;

    public UserItemRepositoryImpl(
        JpaUserItemRepository jpaUserItemRepository
    ) {
        this.jpaUserItemRepository = jpaUserItemRepository;
    }

    @Override
    public void save(UserItem userItem) {
        jpaUserItemRepository.save(UserItemMapper.toEntity(userItem));
    }

    @Override
    public List<UserItem> findByUserId(UserId userId) {
        return jpaUserItemRepository.findByUserId(userId.value())
            .stream()
            .map(UserItemMapper::toDomain)
            .toList();
    }

}

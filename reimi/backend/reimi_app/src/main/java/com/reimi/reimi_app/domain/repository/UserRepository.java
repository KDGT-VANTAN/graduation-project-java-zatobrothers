package com.reimi.reimi_app.domain.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

<<<<<<<< HEAD:reimi/backend/reimi_app/src/main/java/com/reimi/reimi_app/domain/repository/UserRepository.java
import com.reimi.reimi_app.model.User;
========
import com.reimi.reimi_app.domain.model.Forum;
>>>>>>>> develop:reimi/backend/reimi_app/src/main/java/com/reimi/reimi_app/domain/repository/ForumRepository.java

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {
}

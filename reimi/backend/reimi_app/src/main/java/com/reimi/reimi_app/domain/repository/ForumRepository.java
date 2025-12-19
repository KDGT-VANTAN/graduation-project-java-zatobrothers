package com.reimi.reimi_app.domain.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.reimi.reimi_app.domain.model.Forum;

@Repository
public interface ForumRepository extends JpaRepository<Forum, Integer> {
}
package com.reimi.reimi_app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.reimi.reimi_app.model.User;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {
}

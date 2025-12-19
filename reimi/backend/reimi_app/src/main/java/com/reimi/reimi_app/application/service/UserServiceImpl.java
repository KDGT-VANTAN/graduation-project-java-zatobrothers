package com.reimi.reimi_app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.reimi.reimi_app.model.User;
import com.reimi.reimi_app.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository _userRepository;

    @Override
    public User createUser(User user) {
        return _userRepository.save(user);
    }
}

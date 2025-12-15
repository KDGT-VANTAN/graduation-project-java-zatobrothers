package com.reimi.reimi_app.controller;

import java.net.URI;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import com.reimi.reimi_app.model.User;
import com.reimi.reimi_app.service.UserService;


@RestController
public class UserController {
    @Autowired
    private UserService _userService;

    // User新規作成
    @PostMapping(path="")
    public ResponseEntity<User> createUser(@RequestBody User user) {
        User newUser = _userService.createUser(user);
        URI location = ServletUriComponentsBuilder.fromCurrentRequest().path("/{id}").buildAndExpand(user.getId()).toUri();
        return ResponseEntity.created(location).body(newUser);
    }
}

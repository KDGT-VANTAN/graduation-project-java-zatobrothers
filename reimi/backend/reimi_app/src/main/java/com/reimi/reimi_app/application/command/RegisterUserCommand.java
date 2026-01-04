package com.reimi.reimi_app.application.command;

import com.reimi.reimi_app.domain.model.user.Gender;
import com.reimi.reimi_app.domain.model.user.Address;

import java.time.LocalDate;

import org.springframework.web.multipart.MultipartFile;


public record RegisterUserCommand (
        String name,
        Gender gender,
        LocalDate birthDate,
        Address address,
        MultipartFile mainPhoto,
        String email,
        String introduction
) {}

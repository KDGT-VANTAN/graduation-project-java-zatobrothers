package com.reimi.reimi_app.application.command;

import com.reimi.reimi_app.domain.model.user.Gender;
import com.reimi.reimi_app.domain.model.user.Address;

import java.time.LocalDate;


public record RegisterUserCommand (
        String firebaseUid,
        String name,
        Gender gender,
        LocalDate birthDate,
        Address address,
        String mainPhotoUrl,
        String email
) {}

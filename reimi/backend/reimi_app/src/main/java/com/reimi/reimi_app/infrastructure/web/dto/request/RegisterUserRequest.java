package com.reimi.reimi_app.infrastructure.web.dto.request;

import java.time.LocalDate;

public record RegisterUserRequest (
        String firebaseUid,
        String name,
        String gender,
        LocalDate birthDate,
        String address,
        String mainPhotoUrl,
        String email
) {}
package com.reimi.reimi_app.infrastructure.web.dto.response;

import java.time.LocalDate;
import java.util.UUID;

public record GetUserListResponse (
        UUID id,
        String firebaseUid,
        String name,
        LocalDate birthDate,
        String address,
        String mainPhotoUrl,
        String introduction
) {}

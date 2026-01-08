package com.reimi.reimi_app.infrastructure.web.dto.response;

import java.time.LocalDate;
import java.util.List;
import java.util.UUID;

public record UserWithProfileResponse(
    UUID id,
    String name,
    String gender,
    LocalDate birthDate,
    String address,
    String mainPhotoUrl,
    String introduction,
    Integer height,
    String bodyShape,
    String annualIncome,
    String bloodType,
    String hometown,
    String communicationStyle,
    String occupation,
    String education,
    String smoking,
    String alcohol,
    String holiday,
    List<String> sunnyDayHobbies,
    List<String> rainyDayHobbies
) {}

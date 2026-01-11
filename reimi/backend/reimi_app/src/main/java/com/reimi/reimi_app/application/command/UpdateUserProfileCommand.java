package com.reimi.reimi_app.application.command;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.reimi.reimi_app.domain.model.profile.Alcohol;
import com.reimi.reimi_app.domain.model.profile.AnnualIncome;
import com.reimi.reimi_app.domain.model.profile.BloodType;
import com.reimi.reimi_app.domain.model.profile.BodyShape;
import com.reimi.reimi_app.domain.model.profile.CommunicationStyle;
import com.reimi.reimi_app.domain.model.profile.Education;
import com.reimi.reimi_app.domain.model.profile.Holiday;
import com.reimi.reimi_app.domain.model.profile.Hometown;
import com.reimi.reimi_app.domain.model.profile.Occupation;
import com.reimi.reimi_app.domain.model.profile.Smoking;
import com.reimi.reimi_app.domain.model.user.Address;

public record UpdateUserProfileCommand (

    String name,
    Address address,
    MultipartFile mainPhoto,
    String introduction,
    Integer height,
    BodyShape bodyShape,
    AnnualIncome annualIncome,
    BloodType bloodType,
    Hometown hometown,
    CommunicationStyle communicationStyle,
    Occupation occupation,
    Education education,
    Smoking smoking,
    Alcohol alcohol,
    Holiday holiday,
    List<String> sunnyDayHobbies,
    List<String> rainyDayHobbies,
    List<MultipartFile> subPhotos
) {}

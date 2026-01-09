package com.reimi.reimi_app.infrastructure.persistence.mapper;

import com.reimi.reimi_app.domain.model.profile.Profile;
import com.reimi.reimi_app.domain.model.user.UserId;
import com.reimi.reimi_app.infrastructure.persistence.entity.ProfileEntity;
import com.reimi.reimi_app.infrastructure.persistence.entity.UserEntity;

public class ProfileMapper {

    public static Profile toDomain(ProfileEntity entity) {
        return Profile.reconstruct(
                new UserId(entity.getUserId()),
                entity.getIntroduction(),
                entity.getHeight(),
                entity.getBodyShape(),
                entity.getAnnualIncome(),
                entity.getBloodType(),
                entity.getHometown(),
                entity.getCommunicationStyle(),
                entity.getOccupation(),
                entity.getEducation(),
                entity.getSmoking(),
                entity.getAlcohol(),
                entity.getHoliday(),
                entity.getSunnyDayHobbies(),
                entity.getRainyDayHobbies()
        );
    }
    public static ProfileEntity toEntity(Profile profile, UserEntity userEntity) {
        ProfileEntity entity = new ProfileEntity();
        entity.setUser(userEntity);
        entity.setIntroduction(profile.getIntroduction());
        entity.setHeight(profile.getHeight());
        entity.setBodyShape(profile.getBodyShape());
        entity.setAnnualIncome(profile.getAnnualIncome());
        entity.setBloodType(profile.getBloodType());
        entity.setHometown(profile.getHometown());
        entity.setCommunicationStyle(profile.getCommunicationStyle());
        entity.setOccupation(profile.getOccupation());
        entity.setEducation(profile.getEducation());
        entity.setSmoking(profile.getSmoking());
        entity.setAlcohol(profile.getAlcohol());
        entity.setHoliday(profile.getHoliday());
        entity.setSunnyDayHobbies(profile.getSunnyDayHobbies());
        entity.setRainyDayHobbies(profile.getRainyDayHobbies());

        return entity;
    }
}

package com.reimi.reimi_app.infrastructure.persistence.mapper;

import com.reimi.reimi_app.domain.model.profile.Profile;
import com.reimi.reimi_app.domain.model.profile.ProfileId;
import com.reimi.reimi_app.domain.model.user.UserId;
import com.reimi.reimi_app.infrastructure.persistence.entity.ProfileEntity;
import com.reimi.reimi_app.infrastructure.persistence.entity.UserEntity;

public class ProfileMapper {

    public static Profile toDomain(ProfileEntity entity) {
        return Profile.reconstruct(
                new ProfileId(entity.getId()),
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
        entity.setId(profile.getId().value());
        entity.setUserId(userEntity.getId());
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

    public static ProfileEntity toUpdateEntity(Profile profile,ProfileEntity entity) {
        entity.setIntroduction(profile.getIntroduction());
        if (profile.getHeight() != null) entity.setHeight(profile.getHeight());
        if (profile.getBodyShape() != null) entity.setBodyShape(profile.getBodyShape());
        if (profile.getAnnualIncome() != null) entity.setAnnualIncome(profile.getAnnualIncome());
        if (profile.getBloodType() != null) entity.setBloodType(profile.getBloodType());
        if (profile.getHometown() != null) entity.setHometown(profile.getHometown());
        if (profile.getCommunicationStyle() != null) entity.setCommunicationStyle(profile.getCommunicationStyle());
        if (profile.getOccupation() != null) entity.setOccupation(profile.getOccupation());
        if (profile.getEducation() != null) entity.setEducation(profile.getEducation());
        if (profile.getSmoking() != null) entity.setSmoking(profile.getSmoking());
        if (profile.getAlcohol() != null) entity.setAlcohol(profile.getAlcohol());
        if (profile.getHoliday() != null) entity.setHoliday(profile.getHoliday());
        if (profile.getSunnyDayHobbies() != null) entity.setSunnyDayHobbies(profile.getSunnyDayHobbies());
        if (profile.getRainyDayHobbies() != null) entity.setRainyDayHobbies(profile.getRainyDayHobbies());

        return entity;
    }
}

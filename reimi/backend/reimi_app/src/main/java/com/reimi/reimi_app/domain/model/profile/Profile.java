package com.reimi.reimi_app.domain.model.profile;

import java.util.List;

import com.reimi.reimi_app.domain.model.user.UserId;

public class Profile {

    private final UserId userId;
    private final String introduction;
    private final Height height;
    private final BodyShape bodyShape;
    private final AnnualIncome annualIncome;
    private final BloodType bloodType;
    private final Hometown hometown;
    private final CommunicationStyle communicationStyle;
    private final Occupation occupation;
    private final Education education;
    private final Smoking smoking;
    private final Alcohol alcohol;
    private final Holiday holiday;
    private final List<String> sunnyDayHobbies;
    private final List<String> rainyDayHobbies;


    private Profile(
        UserId userId,
        String introduction,
        Height height,
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
        List<String> rainyDayHobbies
    ) {
        if (introduction == null || introduction.length() < 20 || introduction.length() > 500) {
            throw new IllegalArgumentException("自己紹介文は20〜500文字である必要があります");
        }
        if (sunnyDayHobbies != null && sunnyDayHobbies.size() > 3) {
            throw new IllegalArgumentException("晴れの日の趣味は最大3つまでです");
        }
        if (rainyDayHobbies != null && rainyDayHobbies.size() > 3) {
            throw new IllegalArgumentException("雨の日の趣味は最大3つまでです");
        }
        this.userId = userId;
        this.introduction = introduction;
        this.height = height;
        this.bodyShape = bodyShape;
        this.annualIncome = annualIncome;
        this.bloodType = bloodType;
        this.hometown = hometown;
        this.communicationStyle = communicationStyle;
        this.occupation = occupation;
        this.education = education;
        this.smoking = smoking;
        this.alcohol = alcohol;
        this.holiday = holiday;
        this.sunnyDayHobbies = sunnyDayHobbies;
        this.rainyDayHobbies = rainyDayHobbies;
    }
    public static Profile create(
        UserId userId,
        String introduction
    ) {
        return new Profile(
            userId,
            introduction,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        );
    }

    public static Profile reconstruct(
        UserId userId,
        String introduction,
        Height height,
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
        List<String> rainyDayHobbies
    ) {
        return new Profile(
                userId,
                introduction,
                height,
                bodyShape,
                annualIncome,
                bloodType,
                hometown,
                communicationStyle,
                occupation,
                education,
                smoking,
                alcohol,
                holiday,
                sunnyDayHobbies,
                rainyDayHobbies
        );
    }

    public UserId getUserId() { return userId; }
    public String getIntroduction() { return introduction; }
    public Height getHeight() { return height; }
    public BodyShape getBodyShape() { return bodyShape; }
    public AnnualIncome getAnnualIncome() { return annualIncome; }
    public BloodType getBloodType() { return bloodType; }
    public Hometown getHometown() { return hometown; }
    public CommunicationStyle getCommunicationStyle() { return communicationStyle; }
    public Occupation getOccupation() { return occupation; }
    public Education getEducation() { return education; }
    public Smoking getSmoking() { return smoking; }
    public Alcohol getAlcohol() { return alcohol; }
    public Holiday getHoliday() { return holiday; }
    public List<String> getSunnyDayHobbies() { return sunnyDayHobbies; }
    public List<String> getRainyDayHobbies() { return rainyDayHobbies; }
}

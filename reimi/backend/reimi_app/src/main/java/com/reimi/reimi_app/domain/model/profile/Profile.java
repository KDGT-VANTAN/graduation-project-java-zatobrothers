package com.reimi.reimi_app.domain.model.profile;

import java.util.ArrayList;
import java.util.List;

import com.reimi.reimi_app.domain.model.user.UserId;

public class Profile {

    private final ProfileId id;
    private final UserId userId;
    private String introduction;
    private Integer height;
    private BodyShape bodyShape;
    private AnnualIncome annualIncome;
    private BloodType bloodType;
    private Hometown hometown;
    private CommunicationStyle communicationStyle;
    private Occupation occupation;
    private Education education;
    private Smoking smoking;
    private Alcohol alcohol;
    private Holiday holiday;
    private List<String> sunnyDayHobbies;
    private List<String> rainyDayHobbies;


    private Profile(
        ProfileId id,
        UserId userId,
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
        List<String> rainyDayHobbies
    ) {
        if (introduction == null || introduction.length() < 20 || introduction.length() > 500) {
            throw new IllegalArgumentException("自己紹介文は20〜500文字である必要があります");
        }
        if (height != null && height < 130) { height = 130; }
        if (height != null && height > 200) { height = 200; }
        if (sunnyDayHobbies != null && sunnyDayHobbies.size() > 3) {
            throw new IllegalArgumentException("晴れの日にやりたいことは最大3つまでです");
        }
        if (rainyDayHobbies != null && rainyDayHobbies.size() > 3) {
            throw new IllegalArgumentException("雨の日にやりたいことは最大3つまでです");
        }
        this.id = id;
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
        ProfileId profileId = ProfileId.generate();
        return new Profile(
            profileId,
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
        ProfileId id,
        UserId userId,
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
        List<String> rainyDayHobbies
    ) {
        return new Profile(
                id,
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

    public void update(
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
        List<String> rainyDayHobbies
    ) {
        if (introduction != null && !introduction.isBlank()) {
            if (introduction.length() < 20 || introduction.length() > 500) {
            throw new IllegalArgumentException("自己紹介文は20〜500文字である必要があります");
            }
            this.introduction = introduction;
        }
        if (height != null) this.height = height;
        if (bodyShape != null) this.bodyShape = bodyShape;
        if (annualIncome != null) this.annualIncome = annualIncome;
        if (bloodType != null) this.bloodType = bloodType;
        if (hometown != null) this.hometown = hometown;
        if (communicationStyle != null) this.communicationStyle = communicationStyle;
        if (occupation != null) this.occupation = occupation;
        if (education != null) this.education = education;
        if (smoking != null) this.smoking = smoking;
        if (alcohol != null) this.alcohol = alcohol;
        if (holiday != null) this.holiday = holiday;
        updateSunnyDayHobbies(sunnyDayHobbies);
        updateRainyDayHobbies(rainyDayHobbies);
    }

    public void updateSunnyDayHobbies(List<String> newHobbies) {
        if (newHobbies == null || newHobbies.isEmpty()) {
            return;
        }

        List<String> merged = new ArrayList<>();
        if (this.sunnyDayHobbies != null) {
            merged.addAll(this.sunnyDayHobbies);
        }

        merged.addAll(newHobbies);

        List<String> deduplicated = new ArrayList<>(
            merged.stream()
                .distinct()
                .toList()
        );

        int size = deduplicated.size();
        this.sunnyDayHobbies = deduplicated.subList(
            Math.max(0, size - 3),
            size
        );
    }

    public void updateRainyDayHobbies(List<String> newHobbies) {
        if (newHobbies == null || newHobbies.isEmpty()) {
            return;
        }

        List<String> merged = new ArrayList<>();

        if (this.rainyDayHobbies != null) {
            merged.addAll(this.rainyDayHobbies);
        }

        merged.addAll(newHobbies);

        List<String> deduplicated = new ArrayList<>(
            merged.stream()
                .distinct()
                .toList()
        );

        int size = deduplicated.size();
        this.rainyDayHobbies = deduplicated.subList(
            Math.max(0, size - 3),
            size
        );
    }

    public ProfileId getId() { return id; }
    public UserId getUserId() { return userId; }
    public String getIntroduction() { return introduction; }
    public Integer getHeight() { return height; }
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

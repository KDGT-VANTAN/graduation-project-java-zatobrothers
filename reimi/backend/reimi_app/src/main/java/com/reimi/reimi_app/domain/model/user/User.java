package com.reimi.reimi_app.domain.model.user;

import java.time.LocalDate;

import com.reimi.reimi_app.domain.model.profile.Profile;

public class User {

    private final UserId id;
    private final String firebaseUid;
    private String name;
    private final Gender gender;
    private final LocalDate birthDate;
    private Address address;
    private String mainPhotoUrl;
    private final String email;
    private final Status status;
    private final Profile profile;

    private User(
            UserId id,
            String firebaseUid,
            String name,
            Gender gender,
            LocalDate birthDate,
            Address address,
            String mainPhotoUrl,
            String email,
            Status status,
            Profile profile
    ) {
        this.id = id;
        this.firebaseUid = firebaseUid;
        this.name = name;
        this.gender = gender;
        this.birthDate = birthDate;
        this.address = address;
        this.mainPhotoUrl = mainPhotoUrl;
        this.email = email;
        this.status = status;
        this.profile = profile;
    }
    public static User create(
            String firebaseUid,
            String name,
            Gender gender,
            LocalDate birthDate,
            Address address,
            String mainPhotoUrl,
            String email,
            String introduction
    ) {
        UserId userId = UserId.generate();
        Profile profile = Profile.create(userId, introduction);

        return new User(
                userId,
                firebaseUid,
                name,
                gender,
                birthDate,
                address,
                mainPhotoUrl,
                email,
                Status.ACTIVE,
                profile
        );
    }

    public static User reconstruct(
        UserId id,
        String firebaseUid,
        String name,
        Gender gender,
        LocalDate birthDate,
        Address address,
        String mainPhotoUrl,
        String email,
        Status status,
        Profile profile
    ) {
        return new User(
                id,
                firebaseUid,
                name,
                gender,
                birthDate,
                address,
                mainPhotoUrl,
                email,
                status,
                profile
        );
    }

    public void update(
        String name,
        Address address,
        String mainPhotoUrl
    ) {
        if (name == null || name.isBlank()) {
            throw new IllegalArgumentException("名前は必須です");
        }
        if (address == null) {
            throw new IllegalArgumentException("居住地は必須です");
        }
        if (mainPhotoUrl == null || mainPhotoUrl.isBlank()) {
            throw new IllegalArgumentException("メイン写真は必須です");
        }
        this.name = name;
        this.address = address;
        this.mainPhotoUrl = mainPhotoUrl;
    }

    public UserId getId() { return id; }
    public String getFirebaseUid() { return firebaseUid; }
    public String getName() { return name; }
    public Gender getGender() { return gender; }
    public LocalDate getBirthDate() { return birthDate; }
    public Address getAddress() { return address; }
    public String getMainPhotoUrl() { return mainPhotoUrl; }
    public String getEmail() { return email; }
    public Status getStatus() { return status; }
    public Profile getProfile() { return profile; }

    //メイン写真を署名URLとして管理したいためシリアライズ対象外とする
    private transient String signedMainPhotoUrl;

    public String getSignedMainPhotoUrl() { return signedMainPhotoUrl; }
    public void setSignedMainPhotoUrl(String signedMainPhotoUrl) { this.signedMainPhotoUrl = signedMainPhotoUrl; }
}
package com.reimi.reimi_app.domain.model.subphoto;

import com.reimi.reimi_app.domain.model.profile.ProfileId;


public class SubPhoto {

    private final SubPhotoId id;
    private final ProfileId profileId;
    private String photoUrl;
    private Integer sortOrder;


    private SubPhoto(
        SubPhotoId id,
        ProfileId profileId,
        String photoUrl,
        Integer sortOrder
    ) {
        this.id = id;
        this.profileId = profileId;
        this.photoUrl = photoUrl;
        this.sortOrder = sortOrder;
    }

    public static SubPhoto create(
        ProfileId profileId,
        String photoUrl,
        Integer sortOrder
    ) {
        SubPhotoId subPhotoId = SubPhotoId.generate();
        return new SubPhoto(
            subPhotoId,
            profileId,
            photoUrl,
            sortOrder
        );
    }

    public static SubPhoto reconstruct(
        SubPhotoId id,
        ProfileId profileId,
        String photoUrl,
        Integer sortOrder
    ) {
        return new SubPhoto(
                id,
                profileId,
                photoUrl,
                sortOrder
        );
    }

    public SubPhotoId getId() { return id; }
    public ProfileId getProfileId() { return profileId; }
    public String getPhotoUrl() { return photoUrl; }
    public Integer getSortOrder() { return sortOrder; }
}

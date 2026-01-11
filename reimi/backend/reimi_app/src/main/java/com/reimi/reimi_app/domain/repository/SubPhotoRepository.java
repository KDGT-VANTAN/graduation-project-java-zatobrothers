package com.reimi.reimi_app.domain.repository;

import java.util.List;

import com.reimi.reimi_app.domain.model.profile.ProfileId;
import com.reimi.reimi_app.domain.model.subphoto.SubPhoto;

public interface SubPhotoRepository {

    List<SubPhoto> findAllSubPhotos(ProfileId profileId);

    void save(SubPhoto subPhoto);
}

package com.reimi.reimi_app.infrastructure.persistence.repository.subphoto;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.reimi.reimi_app.application.exception.client.ResourceNotFoundException;
import com.reimi.reimi_app.domain.model.profile.ProfileId;
import com.reimi.reimi_app.domain.model.subphoto.SubPhoto;
import com.reimi.reimi_app.domain.repository.SubPhotoRepository;
import com.reimi.reimi_app.infrastructure.persistence.entity.ProfileEntity;
import com.reimi.reimi_app.infrastructure.persistence.mapper.SubPhotoMapper;
import com.reimi.reimi_app.infrastructure.persistence.repository.profile.JpaProfileRepository;

@Repository
public class SubPhotoRepositoryImpl implements SubPhotoRepository {

    private final JpaSubPhotoRepository jpaSubPhotoRepository;
    private final JpaProfileRepository jpaProfileRepository;

    public SubPhotoRepositoryImpl(
        JpaSubPhotoRepository jpaSubPhotoRepository,
        JpaProfileRepository jpaProfileRepository
    ) {
        this.jpaSubPhotoRepository = jpaSubPhotoRepository;
        this.jpaProfileRepository = jpaProfileRepository;
    }

    @Override
    public List<SubPhoto> findAllSubPhotos(ProfileId profileId) {
        return jpaSubPhotoRepository.findByProfileIdOrderBySortOrderAsc(profileId.value())
            .stream()
            .map(SubPhotoMapper::toDomain)
            .toList();
    }

    @Override
    public void save(SubPhoto subPhoto) {

        ProfileEntity entity = jpaProfileRepository
            .findById(subPhoto.getProfileId().value())
            .orElseThrow(() -> new ResourceNotFoundException("プロフィール"));

        jpaSubPhotoRepository.save(SubPhotoMapper.toEntity(subPhoto, entity));

    }
}

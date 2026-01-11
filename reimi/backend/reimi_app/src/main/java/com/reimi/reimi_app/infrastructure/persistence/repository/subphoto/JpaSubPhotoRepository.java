package com.reimi.reimi_app.infrastructure.persistence.repository.subphoto;

import java.util.List;
import java.util.UUID;

import org.springframework.data.jpa.repository.JpaRepository;

import com.reimi.reimi_app.infrastructure.persistence.entity.SubPhotoEntity;

public interface JpaSubPhotoRepository extends JpaRepository<SubPhotoEntity, UUID> {
    List<SubPhotoEntity> findByProfileIdOrderBySortOrderAsc(UUID profileId);
}
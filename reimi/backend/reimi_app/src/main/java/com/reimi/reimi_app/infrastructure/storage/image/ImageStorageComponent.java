package com.reimi.reimi_app.infrastructure.storage.image;

import org.springframework.stereotype.Component;

import com.google.cloud.storage.Bucket;
import com.reimi.reimi_app.infrastructure.storage.AbstractFirebaseStorage;

@Component
public class ImageStorageComponent extends AbstractFirebaseStorage {

    public ImageStorageComponent (Bucket bucket) {
        super(bucket);
    }
}

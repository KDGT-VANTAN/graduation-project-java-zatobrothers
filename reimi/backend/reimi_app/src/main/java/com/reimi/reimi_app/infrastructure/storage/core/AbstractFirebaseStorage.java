package com.reimi.reimi_app.infrastructure.storage.core;

import com.google.cloud.storage.Bucket;

public abstract class AbstractFirebaseStorage {

    protected final Bucket bucket;

    protected AbstractFirebaseStorage(Bucket bucket) {
        this.bucket = bucket;
    }

}

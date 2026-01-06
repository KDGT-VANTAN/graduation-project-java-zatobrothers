package com.reimi.reimi_app.application.exception.client;

import org.springframework.http.HttpStatus;

import com.reimi.reimi_app.application.exception.ClientErrorException;

public class ResourceNotFoundException extends ClientErrorException {
    public ResourceNotFoundException(String resourceName) {
        super(
            "RESOURCE_NOT_FOUND",
            resourceName + "が見つかりません",
            HttpStatus.NOT_FOUND
        );
    }
}

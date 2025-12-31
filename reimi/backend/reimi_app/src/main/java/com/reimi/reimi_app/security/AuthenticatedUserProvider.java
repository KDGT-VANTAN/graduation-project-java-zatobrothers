package com.reimi.reimi_app.security;

import org.springframework.stereotype.Component;

import com.reimi.reimi_app.application.exception.client.UnauthenticatedException;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

@Component
public class AuthenticatedUserProvider {
    public String getFirebaseUid() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

        if (authentication == null || !authentication.isAuthenticated()) {
            throw new UnauthenticatedException();
        }

        return authentication.getName();
    }
}

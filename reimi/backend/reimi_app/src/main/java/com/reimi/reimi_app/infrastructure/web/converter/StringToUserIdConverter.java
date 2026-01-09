package com.reimi.reimi_app.infrastructure.web.converter;

import com.reimi.reimi_app.domain.model.user.UserId;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

import java.util.UUID;

@Component
public class StringToUserIdConverter implements Converter<String, UserId> {

    @Override
    public UserId convert(String source) {
        return new UserId(UUID.fromString(source));
    }
}
package com.reimi.reimi_app.application.initializer;

import org.springframework.boot.ApplicationRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.reimi.reimi_app.domain.model.item.ItemType;
import com.reimi.reimi_app.domain.repository.ItemTypeRepository;

@Configuration
public class ItemTypeInitializer {
    @Bean
    ApplicationRunner initializeItemTypes(
        ItemTypeRepository itemTypeRepository
    ) {
        return arg -> {
            for(ItemType itemType : ItemType.values()) {
                if (itemTypeRepository.findByCode(itemType.getCode()).isEmpty()) {
                    itemTypeRepository.save(itemType);
                }
            }
        };
    }
}
package com.reimi.reimi_app.infrastructure.persistence.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.UniqueConstraint;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(
    name = "item_types",
    uniqueConstraints = {
        @UniqueConstraint(name = "uk_item_types_code", columnNames = "code")
    }
)
public class ItemTypeEntity {

    @Id
    @Column(name = "id", nullable = false, updatable = false)
    private int id;

    @Column(name = "code", nullable = false, updatable = false, unique = true)
    private String code;

    @Column(name = "name", nullable = false, updatable = false)
    private String name;

    @Column(name = "description", nullable = false, updatable = false)
    private String description;

    public ItemTypeEntity(
        int id,
        String code,
        String name,
        String description
    ) {
        this.id = id;
        this.code = code;
        this.name = name;
        this.description = description;
    }

    public ItemTypeEntity() {}
}
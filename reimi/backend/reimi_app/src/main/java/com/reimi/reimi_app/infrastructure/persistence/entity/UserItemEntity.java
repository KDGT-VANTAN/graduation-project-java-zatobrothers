package com.reimi.reimi_app.infrastructure.persistence.entity;

import java.util.UUID;

import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.UniqueConstraint;
import jakarta.validation.constraints.Min;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(
    name = "user_items",
    uniqueConstraints = {
        @UniqueConstraint(columnNames = {"user_id", "item_type_id"})
    }
)
public class UserItemEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false, updatable = false)
    private Long id;

    @Column(name = "user_id", nullable = false, updatable = false)
    private UUID userId;

    @Column(name = "item_type_id", nullable = false, updatable = false)
    private int itemTypeId;

    @Min(1)
    @Column(name = "quantity", nullable = false)
    private int quantity;

    public UserItemEntity() {}
}
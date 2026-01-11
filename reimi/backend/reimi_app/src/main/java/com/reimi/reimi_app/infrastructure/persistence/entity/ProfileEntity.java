package com.reimi.reimi_app.infrastructure.persistence.entity;

import java.time.OffsetDateTime;
import java.time.ZoneOffset;
import java.util.List;
import java.util.UUID;

import com.reimi.reimi_app.domain.model.profile.Alcohol;
import com.reimi.reimi_app.domain.model.profile.AnnualIncome;
import com.reimi.reimi_app.domain.model.profile.BloodType;
import com.reimi.reimi_app.domain.model.profile.BodyShape;
import com.reimi.reimi_app.domain.model.profile.CommunicationStyle;
import com.reimi.reimi_app.domain.model.profile.Education;
import com.reimi.reimi_app.domain.model.profile.Holiday;
import com.reimi.reimi_app.domain.model.profile.Hometown;
import com.reimi.reimi_app.domain.model.profile.Occupation;
import com.reimi.reimi_app.domain.model.profile.Smoking;

import jakarta.persistence.CollectionTable;
import jakarta.persistence.Column;
import jakarta.persistence.ElementCollection;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.FetchType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;
import jakarta.persistence.Table;
import jakarta.persistence.UniqueConstraint;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "profiles",
    uniqueConstraints = {
        @UniqueConstraint(name = "uk_profiles_user_id", columnNames = "user_id")
    }
)
public class ProfileEntity {

    @Id
    @Column(name = "id", nullable = false, updatable = false)
    private UUID id;

    @Column(name = "user_id", nullable = false, unique = true)
    private UUID userId;

    @OneToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "user_id", nullable = false, updatable = false, insertable = false)
    private UserEntity user;

    @Column(name = "introduction", nullable = false, length = 500)
    private String introduction;

    @Column(name = "height")
    private Integer height;

    @Enumerated(EnumType.STRING)
    @Column(name = "body_shape")
    private BodyShape bodyShape;

    @Enumerated(EnumType.STRING)
    @Column(name = "annual_income")
    private AnnualIncome annualIncome;

    @Enumerated(EnumType.STRING)
    @Column(name = "blood_type")
    private BloodType bloodType;

    @Enumerated(EnumType.STRING)
    @Column(name = "hometown")
    private Hometown hometown;

    @Enumerated(EnumType.STRING)
    @Column(name = "communication_style")
    private CommunicationStyle communicationStyle;

    @Enumerated(EnumType.STRING)
    @Column(name = "occupation")
    private Occupation occupation;

    @Enumerated(EnumType.STRING)
    @Column(name = "education")
    private Education education;

    @Enumerated(EnumType.STRING)
    @Column(name = "smoking")
    private Smoking smoking;

    @Enumerated(EnumType.STRING)
    @Column(name = "alcohol")
    private Alcohol alcohol;

    @Enumerated(EnumType.STRING)
    @Column(name = "holiday")
    private Holiday holiday;

    @ElementCollection
    @CollectionTable(
        name = "sunny_day_hobbies",
        joinColumns = @JoinColumn(name = "profile_id")
    )
    @Column(name = "hobby")
    private List<String> sunnyDayHobbies;

    @ElementCollection
    @CollectionTable(
        name = "rainy_day_hobbies",
        joinColumns = @JoinColumn(name = "profile_id")
    )
    @Column(name = "hobby")
    private List<String> rainyDayHobbies;

    @Column(name = "created_at", nullable = false, updatable = false)
    private OffsetDateTime createdAt;

    @Column(name = "updated_at", nullable = false)
    private OffsetDateTime updatedAt;

    @PrePersist
    protected void prePersist() {
        OffsetDateTime now = OffsetDateTime.now(ZoneOffset.UTC);
        this.createdAt = now;
        this.updatedAt = now;
    }

    @PreUpdate
    protected void preUpdate() {
        this.updatedAt = OffsetDateTime.now(ZoneOffset.UTC);
    }

    public ProfileEntity() {}
}

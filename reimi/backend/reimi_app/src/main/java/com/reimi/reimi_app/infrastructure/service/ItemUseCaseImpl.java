package com.reimi.reimi_app.infrastructure.service;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;

import com.reimi.reimi_app.application.dto.output.UserItemOutput;
import com.reimi.reimi_app.application.exception.client.ResourceNotFoundException;
import com.reimi.reimi_app.application.service.ImageUrlResolver;
import com.reimi.reimi_app.application.usecase.ItemUseCase;
import com.reimi.reimi_app.domain.model.item.ItemTypeCode;
import com.reimi.reimi_app.domain.model.item.UserItem;
import com.reimi.reimi_app.domain.model.user.User;
import com.reimi.reimi_app.domain.model.user.UserId;
import com.reimi.reimi_app.domain.model.weatherpersonality.UserWeatherPersonalityType;
import com.reimi.reimi_app.domain.repository.UserItemRepository;
import com.reimi.reimi_app.domain.repository.UserRepository;
import com.reimi.reimi_app.domain.repository.UserWeatherPersonalityTypeRepository;
import com.reimi.reimi_app.infrastructure.storage.image.ImageStorageComponent;
import com.reimi.reimi_app.security.AuthenticatedUserProvider;

@Service
public class ItemUseCaseImpl implements ItemUseCase {

    private final UserItemRepository userItemRepository;
    private final UserRepository userRepository;
    private final AuthenticatedUserProvider authenticatedUserProvider;
    private final ImageStorageComponent imageStorage;
    private final UserWeatherPersonalityTypeRepository userWeatherPersonalityTypeRepository;
    private final ImageUrlResolver imageUrlResolver;


    public ItemUseCaseImpl(
        UserItemRepository userItemRepository,
        UserRepository userRepository,
        AuthenticatedUserProvider authenticatedUserProvider,
        ImageStorageComponent imageStorage,
        UserWeatherPersonalityTypeRepository userWeatherPersonalityTypeRepository,
        ImageUrlResolver imageUrlResolver
    ) {
        this.userItemRepository = userItemRepository;
        this.userRepository = userRepository;
        this.authenticatedUserProvider = authenticatedUserProvider;
        this.imageStorage = imageStorage;
        this.userWeatherPersonalityTypeRepository = userWeatherPersonalityTypeRepository;
        this.imageUrlResolver = imageUrlResolver;
    }

    @Override
    public UserItemOutput getUserItemList() {

        String firebaseUid = authenticatedUserProvider.getFirebaseUid();

        User user = userRepository.findMeByFirebaseUid(firebaseUid)
            .orElseThrow(() -> new ResourceNotFoundException("ユーザー"));

        UserId userId = user.getId();

        List<UserItem> userItems = userItemRepository.findByUserId(userId);

        Map<ItemTypeCode, Integer> items =
            userItems.stream()
                .collect(Collectors.toMap(
                    userItem -> ItemTypeCode.fromItemTypeId(userItem.getId().itemTypeId()),
                    userItem -> userItem.getQuantity()
                ));

        UserWeatherPersonalityType userType = userWeatherPersonalityTypeRepository.findByUserId(userId)
            .orElseThrow(() -> new ResourceNotFoundException("ウェザーパーソナリティ診断結果"));

        String typeImageUrl = imageUrlResolver.resolve(
                userType.getWeatherPersonalityType().getImagePath()
            );

        userType.getWeatherPersonalityType().setTypeImageUrl(typeImageUrl);

        user.setSignedMainPhotoUrl(imageStorage.getSignedUrl(user.getMainPhotoUrl()));

        return new UserItemOutput(
            user.getId(),
            user.getName(),
            user.getSignedMainPhotoUrl(),
            userType,
            items
        );
    }

}

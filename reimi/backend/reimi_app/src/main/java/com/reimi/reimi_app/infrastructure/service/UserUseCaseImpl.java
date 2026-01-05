package com.reimi.reimi_app.infrastructure.service;

import com.reimi.reimi_app.application.command.RegisterUserCommand;
import com.reimi.reimi_app.application.exception.client.UserAlreadyExistsException;
import com.reimi.reimi_app.application.exception.client.InvalidRequestException;
import com.reimi.reimi_app.application.exception.client.ResourceNotFoundException;
import com.reimi.reimi_app.application.exception.client.EmailAlreadyExistsException;
import com.reimi.reimi_app.application.usecase.UserUseCase;
import com.reimi.reimi_app.domain.model.user.User;
import com.reimi.reimi_app.domain.repository.UserRepository;
import com.reimi.reimi_app.infrastructure.storage.image.ImageStorageComponent;
import com.reimi.reimi_app.infrastructure.storage.image.ImageStoragePath;
import com.reimi.reimi_app.security.AuthenticatedUserProvider;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserUseCaseImpl implements UserUseCase {

    private final AuthenticatedUserProvider authenticatedUserProvider;
    private final UserRepository userRepository;
    private final ImageStorageComponent imageStorage;
    private final ImageStoragePath imageStoragePath;

    public UserUseCaseImpl(
        AuthenticatedUserProvider authenticatedUserProvider,
        UserRepository userRepository,
        ImageStorageComponent imageStorage,
        ImageStoragePath imageStoragePath
    ) {
        this.authenticatedUserProvider = authenticatedUserProvider;
        this.userRepository = userRepository;
        this.imageStorage = imageStorage;
        this.imageStoragePath = imageStoragePath;
    }

    @Override
    @Transactional(readOnly = true)
    public Optional<User> getUser(String firebaseUid) {

        Optional<User> me = userRepository.findMeByFirebaseUid(firebaseUid);

        if (me.isEmpty()) {
            throw new ResourceNotFoundException("ユーザー");
        }

        return me;
    }

    @Override
    @Transactional(readOnly = true)
    public List<User> getUsersExcludingMe(String firebaseUid) {

        List<User> users = userRepository.findAllUserExcludingMeByFirebaseUid(firebaseUid);

        for (User user : users) {
            user.setSignedMainPhotoUrl(imageStorage.getSignedUrl(user.getMainPhotoUrl()));
        }

        return users;
    }
    @Override
    @Transactional
    public void registerUser(RegisterUserCommand command) {

        if (command.mainPhoto() == null || command.mainPhoto().isEmpty()) {
            throw new InvalidRequestException("メイン写真は必須です");
        }

        String firebaseUid = authenticatedUserProvider.getFirebaseUid();

        if (userRepository.existsByFirebaseUid(firebaseUid)) {
            throw new UserAlreadyExistsException();
        }

        if (userRepository.existsByEmail(command.email())) {
            throw new EmailAlreadyExistsException();
        }
        // メイン写真のベースパスを取得
        String basePath = imageStoragePath.userMainPhotoPath();
        // メイン写真の画像アップロード
        String mainPhotoPath = imageStorage.imageUpload(command.mainPhoto(), basePath);

        User user = User.create(
                firebaseUid,
                command.name(),
                command.gender(),
                command.birthDate(),
                command.address(),
                mainPhotoPath,
                command.email(),
                command.introduction()
        );

        userRepository.save(user);
    }
}

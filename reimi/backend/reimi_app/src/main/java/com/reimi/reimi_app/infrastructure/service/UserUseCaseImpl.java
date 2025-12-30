package com.reimi.reimi_app.infrastructure.service;

import com.reimi.reimi_app.application.command.RegisterUserCommand;
import com.reimi.reimi_app.application.exception.AlreadyRegisteredException;
import com.reimi.reimi_app.application.exception.EmailAlreadyExistsException;
import com.reimi.reimi_app.application.usecase.UserUseCase;
import com.reimi.reimi_app.domain.model.user.User;
import com.reimi.reimi_app.domain.repository.UserRepository;
import com.reimi.reimi_app.security.AuthenticatedUserProvider;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserUseCaseImpl implements UserUseCase {

    private final AuthenticatedUserProvider authenticatedUserProvider;
    private final UserRepository userRepository;

    public UserUseCaseImpl(
        AuthenticatedUserProvider authenticatedUserProvider,
        UserRepository userRepository
    ) {
        this.authenticatedUserProvider = authenticatedUserProvider;
        this.userRepository = userRepository;
    }
    @Override
    @Transactional(readOnly = true)
    public List<User> getUsers() {
        return userRepository.findAll();
    }
    @Override
    @Transactional
    public void registerUser(RegisterUserCommand command) {

        if (userRepository.existsByFirebaseUid(command.firebaseUid())) {
            throw new AlreadyRegisteredException();
        }

        if (userRepository.existsByEmail(command.email())) {
            throw new EmailAlreadyExistsException();
        }

        User user = User.create(
                command.firebaseUid(),
                command.name(),
                command.gender(),
                command.birthDate(),
                command.address(),
                command.mainPhotoUrl(),
                command.email(),
                command.introduction()
        );

        userRepository.save(user);
    }
}

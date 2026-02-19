package com.reimi.reimi_app.infrastructure.service;

import org.springframework.stereotype.Service;

import com.reimi.reimi_app.application.command.DiagnoseWeatherPersonalityCommand;
import com.reimi.reimi_app.application.exception.client.AccessDeniedException;
import com.reimi.reimi_app.application.exception.client.DiagnoseResultAlreadyExistsException;
import com.reimi.reimi_app.application.exception.client.ResourceNotFoundException;
import com.reimi.reimi_app.application.service.ImageUrlResolver;
import com.reimi.reimi_app.application.usecase.WeatherPersonalityUseCase;
import com.reimi.reimi_app.domain.model.user.User;
import com.reimi.reimi_app.domain.model.user.UserId;
import com.reimi.reimi_app.domain.model.weatherpersonality.diagnose.WeatherPersonalityDiagnosis;
import com.reimi.reimi_app.domain.model.weatherpersonality.diagnose.WeatherPersonalityScore;
import com.reimi.reimi_app.domain.model.weatherpersonality.type.WeatherPersonalityCode;
import com.reimi.reimi_app.domain.model.weatherpersonality.type.WeatherPersonalityType;
import com.reimi.reimi_app.domain.model.weatherpersonality.user.UserWeatherPersonalityType;
import com.reimi.reimi_app.domain.repository.UserRepository;
import com.reimi.reimi_app.domain.repository.UserWeatherPersonalityTypeRepository;
import com.reimi.reimi_app.security.AuthenticatedUserProvider;

import org.springframework.transaction.annotation.Transactional;

@Service
public class WeatherPersonalityUseCaseImpl implements WeatherPersonalityUseCase {

    private final UserWeatherPersonalityTypeRepository userWeatherPersonalityTypeRepository;
    private final ImageUrlResolver imageUrlResolver;
    private final UserRepository userRepository;
    private final AuthenticatedUserProvider authenticatedUserProvider;

    public WeatherPersonalityUseCaseImpl(
        UserWeatherPersonalityTypeRepository userWeatherPersonalityTypeRepository,
        ImageUrlResolver imageUrlResolver,
        UserRepository userRepository,
        AuthenticatedUserProvider authenticatedUserProvider
    ) {
        this.userWeatherPersonalityTypeRepository = userWeatherPersonalityTypeRepository;
        this.imageUrlResolver = imageUrlResolver;
        this.userRepository = userRepository;
        this.authenticatedUserProvider = authenticatedUserProvider;
    }

    @Override
    public void diagnose(DiagnoseWeatherPersonalityCommand command) {

        // 既にユーザーが診断済みの場合は重複エラーとする
        if (userWeatherPersonalityTypeRepository.exists(command.userId())) {
            throw new DiagnoseResultAlreadyExistsException();
        }

        // 診断ロジックがあるドメインサービスをインスタンス化して使う
        WeatherPersonalityDiagnosis diagnosis = new WeatherPersonalityDiagnosis();

        // 4つの軸ごとにスコアリングする
        WeatherPersonalityScore weatherPersonalityScore = diagnosis.diagnoseScore(command.answers());

        //スコアリングした結果からタイプコードを決定する
        WeatherPersonalityCode code = diagnosis.decideType(weatherPersonalityScore, command.answers());

        WeatherPersonalityType type = WeatherPersonalityType.from(code);

        UserWeatherPersonalityType result = UserWeatherPersonalityType.result(
            command.userId(),
            type,
            weatherPersonalityScore
        );

        userWeatherPersonalityTypeRepository.save(result);
    }

    @Override
    public UserWeatherPersonalityType getUserResult() {

    String firebaseUid = authenticatedUserProvider.getFirebaseUid();

    User user = userRepository.findMeByFirebaseUid(firebaseUid)
            .orElseThrow(() -> new ResourceNotFoundException("ユーザー"));

    UserWeatherPersonalityType result = userWeatherPersonalityTypeRepository.findByUserId(user.getId())
        .orElseThrow(() -> new ResourceNotFoundException("ウェザーパーソナリティ診断結果"));

    String typeImageUrl = imageUrlResolver.resolve(
            result.getWeatherPersonalityType().getImagePath()
        );

        result.getWeatherPersonalityType().setTypeImageUrl(typeImageUrl);

        return result;
    }

    @Override
    @Transactional
    public void reDiagnose(DiagnoseWeatherPersonalityCommand command) {

        // 既存の診断結果を取得
        UserWeatherPersonalityType existing = userWeatherPersonalityTypeRepository
            .findByUserId(command.userId())
            .orElseThrow(() -> new ResourceNotFoundException("ウェザーパーソナリティ診断結果"));

        // 診断ロジックがあるドメインサービスをインスタンス化して使う
        WeatherPersonalityDiagnosis diagnosis = new WeatherPersonalityDiagnosis();

        // 4つの軸ごとにスコアリングする
        WeatherPersonalityScore weatherPersonalityScore = diagnosis.diagnoseScore(command.answers());

        //スコアリングした結果からタイプコードを決定する
        WeatherPersonalityCode code = diagnosis.decideType(weatherPersonalityScore, command.answers());

        WeatherPersonalityType type = WeatherPersonalityType.from(code);

        // 既存の診断結果を書き換える
        existing.update(type, weatherPersonalityScore);

        userWeatherPersonalityTypeRepository.save(existing);
    }

    @Override
    public UserWeatherPersonalityType getUserResultDetail(UserId userId) {

    String firebaseUid = authenticatedUserProvider.getFirebaseUid();

    User loginUser = userRepository.findMeByFirebaseUid(firebaseUid)
            .orElseThrow(() -> new ResourceNotFoundException("ユーザー"));

    if (!loginUser.getId().equals(userId)) {
        throw new AccessDeniedException();
    }

    UserWeatherPersonalityType result = userWeatherPersonalityTypeRepository.findByUserId(loginUser.getId())
        .orElseThrow(() -> new ResourceNotFoundException("ウェザーパーソナリティ診断結果"));

    String typeImageUrl = imageUrlResolver.resolve(
            result.getWeatherPersonalityType().getImagePath()
        );

        result.getWeatherPersonalityType().setTypeImageUrl(typeImageUrl);

        return result;
    }
}

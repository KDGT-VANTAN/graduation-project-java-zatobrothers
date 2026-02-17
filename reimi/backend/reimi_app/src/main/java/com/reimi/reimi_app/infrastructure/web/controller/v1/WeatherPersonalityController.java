package com.reimi.reimi_app.infrastructure.web.controller.v1;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.reimi.reimi_app.application.command.DiagnoseWeatherPersonalityCommand;
import com.reimi.reimi_app.application.exception.client.ResourceNotFoundException;
import com.reimi.reimi_app.application.usecase.UserUseCase;
import com.reimi.reimi_app.application.usecase.WeatherPersonalityUseCase;
import com.reimi.reimi_app.domain.model.user.User;
import com.reimi.reimi_app.domain.model.user.UserId;
import com.reimi.reimi_app.domain.model.weatherpersonality.diagnose.AnswerChoice;
import com.reimi.reimi_app.domain.model.weatherpersonality.type.WeatherPersonalityAxis;
import com.reimi.reimi_app.infrastructure.web.dto.request.DiagnoseWeatherPersonalityRequest;
import com.reimi.reimi_app.infrastructure.web.dto.response.DiagnoseResultDetailWeatherPersonalityResponse;
import com.reimi.reimi_app.infrastructure.web.dto.response.DiagnoseResultWeatherPersonalityResponse;
import com.reimi.reimi_app.infrastructure.web.openapi.weatherpersonality.DetailUserWeatherPersonalityTypeApi;
import com.reimi.reimi_app.infrastructure.web.openapi.weatherpersonality.DiagnoseWeatherPersonalityTypeApi;
import com.reimi.reimi_app.infrastructure.web.openapi.weatherpersonality.GetUserWeatherPersonalityTypeApi;
import com.reimi.reimi_app.infrastructure.web.openapi.weatherpersonality.ReDiagnoseWeatherPersonalityTypeApi;
import com.reimi.reimi_app.security.AuthenticatedUserProvider;

import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;


@RestController
@Tag(name = "WeatherPersonality", description = "ウェザーパーソナリティ診断関連のAPI")
public class WeatherPersonalityController extends ApiV1Controller {

    private final WeatherPersonalityUseCase weatherPersonalityUseCase;
    private final AuthenticatedUserProvider authenticatedUserProvider;
    private final UserUseCase userUseCase;


    public WeatherPersonalityController(
        WeatherPersonalityUseCase weatherPersonalityUseCase,
        AuthenticatedUserProvider authenticatedUserProvider,
        UserUseCase userUseCase
    ) {
        this.weatherPersonalityUseCase = weatherPersonalityUseCase;
        this.authenticatedUserProvider = authenticatedUserProvider;
        this.userUseCase = userUseCase;
    }

    @PostMapping("/users/user-weather-personality-type")
    @DiagnoseWeatherPersonalityTypeApi
    public ResponseEntity<Void> diagnose(
        @Valid @RequestBody DiagnoseWeatherPersonalityRequest request
    ) {
        List<AnswerChoice> answers = List.of(
            request.q1Answer(),
            request.q2Answer(),
            request.q3Answer(),
            request.q4Answer(),
            request.q5Answer(),
            request.q6Answer(),
            request.q7Answer(),
            request.q8Answer(),
            request.q9Answer(),
            request.q10Answer(),
            request.q11Answer(),
            request.q12Answer(),
            request.q13Answer(),
            request.q14Answer(),
            request.q15Answer(),
            request.q16Answer()
        );

        String myFirebaseUid = authenticatedUserProvider.getFirebaseUid();
        User user = userUseCase.getUser(myFirebaseUid)
            .orElseThrow(() -> new ResourceNotFoundException("ユーザー"));

        weatherPersonalityUseCase.diagnose(
            new DiagnoseWeatherPersonalityCommand(
                user.getId(),
                answers
            )
        );

        return ResponseEntity.status(HttpStatus.CREATED).build();
    }

    @GetMapping("/users/user-weather-personality-type")
    @GetUserWeatherPersonalityTypeApi
    public ResponseEntity<DiagnoseResultWeatherPersonalityResponse> getResult(
    ) {
        var result = weatherPersonalityUseCase.getUserResult();

        Map<WeatherPersonalityAxis, Integer> userAxisScoreMap = new LinkedHashMap<>();
        userAxisScoreMap.put(WeatherPersonalityAxis.SENSITIVITY, result.getWeatherPersonalityScore().sensitivity());
        userAxisScoreMap.put(WeatherPersonalityAxis.PREPAREDNESS, result.getWeatherPersonalityScore().preparedness());
        userAxisScoreMap.put(WeatherPersonalityAxis.ACTIVITY, result.getWeatherPersonalityScore().activity());
        userAxisScoreMap.put(WeatherPersonalityAxis.MOTIVATION, result.getWeatherPersonalityScore().motivation());

        DiagnoseResultWeatherPersonalityResponse response =
            new DiagnoseResultWeatherPersonalityResponse(
                result.getWeatherPersonalityType().getCode(),
                result.getWeatherPersonalityType().getName(),
                result.getWeatherPersonalityType().getCatchphrase(),
                result.getWeatherPersonalityType().getTypeImageUrl(),
                result.getWeatherPersonalityType().getRulingStatement(),
                result.getWeatherPersonalityType().getAxisFeatures(),
                userAxisScoreMap,
                result.getWeatherPersonalityType().getBehaviorTendencies(),
                result.getWeatherPersonalityType().getGodsMessage()
            );

        return ResponseEntity.ok(response);
    }

    @PutMapping("/users/user-weather-personality-type")
    @ReDiagnoseWeatherPersonalityTypeApi
    public ResponseEntity<Void> reDiagnose(
        @Valid @RequestBody DiagnoseWeatherPersonalityRequest request
    ) {
        List<AnswerChoice> answers = List.of(
            request.q1Answer(),
            request.q2Answer(),
            request.q3Answer(),
            request.q4Answer(),
            request.q5Answer(),
            request.q6Answer(),
            request.q7Answer(),
            request.q8Answer(),
            request.q9Answer(),
            request.q10Answer(),
            request.q11Answer(),
            request.q12Answer(),
            request.q13Answer(),
            request.q14Answer(),
            request.q15Answer(),
            request.q16Answer()
        );

        String myFirebaseUid = authenticatedUserProvider.getFirebaseUid();
        User user = userUseCase.getUser(myFirebaseUid)
            .orElseThrow(() -> new ResourceNotFoundException("ユーザー"));

        weatherPersonalityUseCase.reDiagnose(
            new DiagnoseWeatherPersonalityCommand(
                user.getId(),
                answers
            )
        );

        return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
    }

    @GetMapping("/users/{userId}/user-weather-personality-type")
    @DetailUserWeatherPersonalityTypeApi
    public ResponseEntity<DiagnoseResultDetailWeatherPersonalityResponse> getResultDetail(
        @PathVariable UserId userId
    ) {
        var result = weatherPersonalityUseCase.getUserResultDetail(userId);

        Map<WeatherPersonalityAxis, Integer> userAxisScoreMap = new LinkedHashMap<>();
        userAxisScoreMap.put(WeatherPersonalityAxis.SENSITIVITY, result.getWeatherPersonalityScore().sensitivity());
        userAxisScoreMap.put(WeatherPersonalityAxis.PREPAREDNESS, result.getWeatherPersonalityScore().preparedness());
        userAxisScoreMap.put(WeatherPersonalityAxis.ACTIVITY, result.getWeatherPersonalityScore().activity());
        userAxisScoreMap.put(WeatherPersonalityAxis.MOTIVATION, result.getWeatherPersonalityScore().motivation());

        DiagnoseResultDetailWeatherPersonalityResponse response =
            new DiagnoseResultDetailWeatherPersonalityResponse(
                result.getWeatherPersonalityType().getCode(),
                result.getWeatherPersonalityType().getName(),
                result.getWeatherPersonalityType().getCatchphrase(),
                result.getWeatherPersonalityType().getTypeImageUrl(),
                result.getWeatherPersonalityType().getRulingStatement(),
                result.getWeatherPersonalityType().getAxisFeatures(),
                userAxisScoreMap,
                result.getWeatherPersonalityType().getBehaviorTendencies(),
                result.getWeatherPersonalityType().getGoodCompatibilities(),
                result.getWeatherPersonalityType().getCautionCompatibilities(),
                result.getWeatherPersonalityType().getGodsMessage()
            );

        return ResponseEntity.ok(response);
    }
}
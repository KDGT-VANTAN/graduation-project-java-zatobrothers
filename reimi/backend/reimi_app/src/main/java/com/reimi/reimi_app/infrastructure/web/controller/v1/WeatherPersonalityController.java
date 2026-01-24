package com.reimi.reimi_app.infrastructure.web.controller.v1;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.reimi.reimi_app.application.command.DiagnoseWeatherPersonalityCommand;
import com.reimi.reimi_app.application.exception.client.ResourceNotFoundException;
import com.reimi.reimi_app.application.usecase.UserUseCase;
import com.reimi.reimi_app.application.usecase.WeatherPersonalityUseCase;
import com.reimi.reimi_app.domain.model.user.User;
import com.reimi.reimi_app.domain.model.weatherpersonality.AnswerChoice;
import com.reimi.reimi_app.infrastructure.web.dto.request.DiagnoseWeatherPersonalityRequest;
import com.reimi.reimi_app.infrastructure.web.dto.response.DiagnoseResultWeatherPersonalityResponse;
import com.reimi.reimi_app.infrastructure.web.openapi.weatherpersonality.DiagnoseWeatherPersonalityType;
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

    @PostMapping("/diagnoses/score/user-weather-personality-type")
    @DiagnoseWeatherPersonalityType
    public ResponseEntity<DiagnoseResultWeatherPersonalityResponse> diagnose(
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

        var result = weatherPersonalityUseCase.diagnose(
            new DiagnoseWeatherPersonalityCommand(
                user.getId(),
                answers
            )
        );

        DiagnoseResultWeatherPersonalityResponse response =
            new DiagnoseResultWeatherPersonalityResponse(
                result.getWeatherPersonalityType().getCode(),
                result.getWeatherPersonalityType().getName(),
                result.getWeatherPersonalityType().getDescription(),
                result.getWeatherPersonalityType().getTypeImageUrl()
            );

        return ResponseEntity.status(HttpStatus.CREATED).body(response);
    }
}
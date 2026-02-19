package com.reimi.reimi_app.infrastructure.service;

import java.time.LocalDate;
import java.util.List;

import org.springframework.stereotype.Service;

import com.reimi.reimi_app.application.command.report.PostWeatherReportCommand;
import com.reimi.reimi_app.application.exception.client.ReportAlreadyPostedTodayException;
import com.reimi.reimi_app.application.exception.client.ResourceNotFoundException;
import com.reimi.reimi_app.application.usecase.WeatherReportUseCase;
import com.reimi.reimi_app.domain.model.report.WeatherReport;
import com.reimi.reimi_app.domain.model.report.media.WeatherMedia;
import com.reimi.reimi_app.domain.model.user.User;
import com.reimi.reimi_app.domain.model.user.UserId;
import com.reimi.reimi_app.domain.repository.UserRepository;
import com.reimi.reimi_app.domain.repository.WeatherReportRepository;
import com.reimi.reimi_app.infrastructure.storage.image.ImageStorageComponent;
import com.reimi.reimi_app.infrastructure.storage.image.ImageStoragePath;
import com.reimi.reimi_app.security.AuthenticatedUserProvider;

import jakarta.transaction.Transactional;

@Service
public class WeatherReportUseCaseImpl implements WeatherReportUseCase {

    private final WeatherReportRepository weatherReportRepository;
    private final AuthenticatedUserProvider authenticatedUserProvider;
    private final UserRepository userRepository;
    private final ImageStorageComponent imageStorage;
    private final ImageStoragePath imageStoragePath;

    public WeatherReportUseCaseImpl(
        WeatherReportRepository weatherReportRepository,
        AuthenticatedUserProvider authenticatedUserProvider,
        UserRepository userRepository,
        ImageStorageComponent imageStorage,
        ImageStoragePath imageStoragePath
    ) {
        this.weatherReportRepository = weatherReportRepository;
        this.authenticatedUserProvider = authenticatedUserProvider;
        this.userRepository = userRepository;
        this.imageStorage = imageStorage;
        this.imageStoragePath = imageStoragePath;
    }

    @Override
    @Transactional
    public void postWeatherReport(PostWeatherReportCommand command) {

        String firebaseUid = authenticatedUserProvider.getFirebaseUid();

        User user = userRepository.findMeByFirebaseUid(firebaseUid)
            .orElseThrow(() -> new ResourceNotFoundException("ユーザー"));

        UserId userId = user.getId();
        LocalDate today = LocalDate.now();

        // ウェザーリポートは1日1回の投稿であるため、本日既にリポート済みかを確認する
        if (weatherReportRepository.existsByUserIdAndDate(userId, today)) {
            throw new ReportAlreadyPostedTodayException();
        }

        // ウェザーリポート投稿のメディアファイルのベースパスを取得
        String basePath = imageStoragePath.userWeatherReportPhotoPath(userId.value(), today);
        //写真の画像アップロード
        String filePath = imageStorage.imageUpload(command.media().weatherPhoto(), basePath);

        WeatherMedia media = WeatherMedia.create(
                command.media().mediaType(),
                filePath
        );

        WeatherReport weatherReport = WeatherReport.create(
            userId,
            command.comment(),
            command.weather(),
            command.feeling(),
            command.forecast(),
            command.latitude(),
            command.longitude(),
            media
        );

        // observationオブジェクトが存在していた場合
        if (command.observation() != null) {
            var observation = command.observation();

            weatherReport.addObservation(
                observation.temperature(),
                observation.humidity(),
                observation.pressure(),
                observation.windSpeed(),
                observation.windDirection()
            );
        }

        weatherReportRepository.save(weatherReport);
    }

    @Override
    public List<WeatherReport> getTodayWeatherReportList(LocalDate today) {

        List<WeatherReport> todayWeatherReports = weatherReportRepository.findByDate(today);

        for (WeatherReport report : todayWeatherReports) {
            report.getMedia().setSignedWeatherPhotoUrl(imageStorage.getSignedUrl(report.getMedia().getUrl()));
        }

        return todayWeatherReports;
    }

}
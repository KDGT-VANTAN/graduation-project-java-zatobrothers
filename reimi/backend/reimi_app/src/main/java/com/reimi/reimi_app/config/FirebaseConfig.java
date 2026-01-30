package com.reimi.reimi_app.config;


import java.io.FileInputStream;
import java.io.IOException;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.google.auth.oauth2.GoogleCredentials;
import com.google.cloud.storage.Bucket;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseOptions;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.cloud.StorageClient;

import io.github.cdimascio.dotenv.Dotenv;

@Configuration
public class FirebaseConfig {

    private final Dotenv dotenv;

    public FirebaseConfig(Dotenv dotenv) {
        this.dotenv = dotenv;
    }

    @Bean
    public FirebaseApp firebaseApp() throws IOException {

        if (!FirebaseApp.getApps().isEmpty()) {
            return FirebaseApp.getInstance();
        }

        String credentialsPath = dotenv.get("GOOGLE_APPLICATION_CREDENTIALS");
        String bucket = dotenv.get("FIREBASE_STORAGE_BUCKET");

        FileInputStream serviceAccount = new FileInputStream(credentialsPath);

        FirebaseOptions firebaseOptions = FirebaseOptions.builder()
            .setCredentials(GoogleCredentials.fromStream(serviceAccount))
            .setStorageBucket(bucket)
            .build();

        return FirebaseApp.initializeApp(firebaseOptions);
    }

    @Bean
    public FirebaseAuth firebaseAuth(FirebaseApp firebaseApp) {
        return FirebaseAuth.getInstance(firebaseApp);
    }

    @Bean
    public Bucket defaultStorageBucket(FirebaseApp firebaseApp) {
        return StorageClient.getInstance(firebaseApp).bucket();
    }
}

package com.reimi.reimi_app;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.security.servlet.UserDetailsServiceAutoConfiguration;
import org.springframework.scheduling.annotation.EnableAsync;
import com.google.genai.Client;
import com.google.genai.types.GenerateContentResponse;

import io.github.cdimascio.dotenv.Dotenv;

@SpringBootApplication(
	exclude = UserDetailsServiceAutoConfiguration.class
)
@EnableAsync
public class ReimiAppApplication {

	public static void main(String[] args) {
		SpringApplication.run(ReimiAppApplication.class, args);

		Dotenv dotenv = Dotenv.load();

        String apiKey = dotenv.get("GEMINI_API_KEY");
        if (apiKey == null || apiKey.isEmpty()) {
            throw new RuntimeException("GEMINI_API_KEY が設定されていません");
        }

        String model = dotenv.get("GEMINI_MODEL");

		Client client = Client.builder().apiKey(apiKey).build();

		GenerateContentResponse response =
			client.models.generateContent(
				model,
				"Japan is an island nation known for its rich culture, advanced technology, and beautiful landscapes.",
				null);

		System.out.println(response.text());
	}

}

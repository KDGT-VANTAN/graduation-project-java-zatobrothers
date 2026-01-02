package com.reimi.reimi_app;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.security.servlet.UserDetailsServiceAutoConfiguration;

@SpringBootApplication(
	exclude = UserDetailsServiceAutoConfiguration.class
)
public class ReimiAppApplication {

	public static void main(String[] args) {
		SpringApplication.run(ReimiAppApplication.class, args);
	}

}

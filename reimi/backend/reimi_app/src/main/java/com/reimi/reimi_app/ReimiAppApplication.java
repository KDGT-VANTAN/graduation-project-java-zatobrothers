package com.reimi.reimi_app;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import io.swagger.v3.oas.annotations.OpenAPIDefinition;
import io.swagger.v3.oas.annotations.info.Info;
import io.swagger.v3.oas.annotations.servers.Server;

@OpenAPIDefinition(
	info = @Info(
		title = "Reimi",
		version = "1.0",
		description = "天気で繋がる、出会いのアプリ"
	),
	servers = {
        @Server(
            description = "ローカルサーバー",
            url = "http://localhost:8080"
		)
	}
)

@SpringBootApplication
public class ReimiAppApplication {

	public static void main(String[] args) {
		SpringApplication.run(ReimiAppApplication.class, args);
	}

}

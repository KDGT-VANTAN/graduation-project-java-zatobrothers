package com.reimi.reimi_app.config;

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

public class OpenApiConfig {
}

package com.reimi.reimi_app.infrastructure.web.controller;

import java.util.LinkedHashMap;
import java.util.Map;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HealthCheckController {

    @GetMapping(path = "/")
    public Map<String, String> home() {

        LinkedHashMap<String, String> response = new LinkedHashMap<>();

        response.put("app_name", "Reimi");
        response.put("version", "1.0.0");
        response.put("status", "running");
        response.put("message", "天気でつながる、出会いのアプリ");

        return response;
    }
}
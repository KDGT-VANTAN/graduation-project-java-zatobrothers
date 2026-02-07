package com.reimi.reimi_app.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

import com.reimi.reimi_app.security.FirebaseAuthenticationFilter;
import com.reimi.reimi_app.security.FirebaseTokenVerifier;

import org.springframework.security.config.http.SessionCreationPolicy;

@Configuration
public class SecurityConfig {
    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http, FirebaseTokenVerifier verifier) throws Exception {
        http
            .csrf(csrf -> csrf.disable())
            .formLogin(form -> form.disable())
            .httpBasic(basic -> basic.disable())
            .sessionManagement(s -> s.sessionCreationPolicy(SessionCreationPolicy.STATELESS))
            .authorizeHttpRequests(authorize -> authorize
                .requestMatchers(
                    "/",
                    "/swagger-ui/**",
                    "/v3/api-docs/**",
                    "v3/api-docs.yaml",
                    "/images/weather-personalities/**"
                ).permitAll()
                .anyRequest().authenticated())
            .addFilterBefore(
                new FirebaseAuthenticationFilter(verifier),
                UsernamePasswordAuthenticationFilter.class);

        return http.build();
    }
}

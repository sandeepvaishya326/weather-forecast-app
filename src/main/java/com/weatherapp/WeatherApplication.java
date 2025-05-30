package com.weatherapp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class WeatherApplication {
    public static void main(String[] args) {
        System.getProperties().put("server.port", "8080"); 
        SpringApplication.run(WeatherApplication.class, args);
    }
}

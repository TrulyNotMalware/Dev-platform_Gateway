package com.spring.cloud.gateway.devplt;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

//DEPRECATED
//@EnableCircuitBreaker
@EnableDiscoveryClient
@SpringBootApplication
public class DevpltApplication {
    public static void main(String[] args) {
        SpringApplication.run(DevpltApplication.class, args);
    }

}

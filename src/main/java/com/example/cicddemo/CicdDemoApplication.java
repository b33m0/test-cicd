package com.example.cicddemo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@SpringBootApplication
public class CicdDemoApplication {

  public static void main(String[] args) {
    SpringApplication.run(CicdDemoApplication.class, args);
  }

}

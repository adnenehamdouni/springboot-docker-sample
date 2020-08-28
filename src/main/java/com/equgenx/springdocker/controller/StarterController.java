package com.equgenx.springdocker.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Slf4j
@Controller
public class StarterController {

    @GetMapping("/")
    public String index(final Model model) {
        log.info("StarterController: index start here :)");
        model.addAttribute("title", "Docker + Spring Boot");
        model.addAttribute("msg", "Welcome to the docker container!");

        return "index";
    }
}

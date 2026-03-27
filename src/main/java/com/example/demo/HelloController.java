package com.example.demo;

import org.springframework.web.bind.annotation.*;

import org.springframework.stereotype.Controller;

@Controller
public class HelloController {

    @GetMapping("/")
    public String index() {
        return "index";
    }

    @GetMapping("/hello")
    @ResponseBody
    public String hello(@RequestParam String name) {
        return "Xin chào " + name;
    }
}
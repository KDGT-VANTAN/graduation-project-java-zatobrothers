package com.reimi.reimi_app.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(path="/")
public class TestController {

    @RequestMapping(path="/hello", method=RequestMethod.GET)
    public String hello() {
        return "HelloWorld";
    }

}
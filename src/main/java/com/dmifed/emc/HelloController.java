package com.dmifed.emc;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by DIMA, on 27.09.2021
 */
@RestController
public class HelloController {

    @GetMapping("/hello")
    public String hello(){
        return "HelloController HTTP GET Test";
    }
}

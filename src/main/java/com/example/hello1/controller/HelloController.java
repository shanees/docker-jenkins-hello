package com.example.hello1.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

	@GetMapping("/hello1")
	public String test() {

		return "hello 2";
	}

}

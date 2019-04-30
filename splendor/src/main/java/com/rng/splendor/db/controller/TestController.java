package com.rng.splendor.db.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rng.splendor.db.dto.Test;
import com.rng.splendor.db.service.TestService;

@Controller
public class TestController {

	@Autowired
	TestService testService;
	
	@RequestMapping("/query")
    public @ResponseBody List<Test> query() throws Exception {
        return testService.getAll();
    }


}

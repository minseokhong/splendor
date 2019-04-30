package com.rng.splendor.db.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rng.splendor.db.dto.Test;
import com.rng.splendor.db.mapper.TestMapper;

@Service
public class TestService {
	
	@Autowired
	TestMapper testMapper;
	
	public List<Test> getAll() throws Exception {
		return testMapper.getAll();
	}
	
	public void joinTest(Test user) {
		testMapper.insertTest(user);
	}
}

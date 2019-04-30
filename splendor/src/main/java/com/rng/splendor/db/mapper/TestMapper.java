package com.rng.splendor.db.mapper;

import java.util.List;

import com.rng.splendor.db.dto.Test;

public interface TestMapper {
	
	public List<Test> getAll() throws Exception;
	public void insertTest(Test user);
}

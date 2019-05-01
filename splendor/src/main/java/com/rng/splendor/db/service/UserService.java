package com.rng.splendor.db.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rng.splendor.db.dto.UserData;
import com.rng.splendor.db.mapper.UserMapper;


@Service
public class UserService {

	@Autowired
	UserMapper userMapper;
		
	public void insertUser(UserData userData) {
		userMapper.insertUser(userData);
	}
	
	public void updateUser(UserData userData) {
		
	}
	
	public void deleteUser(String userName) {
		
	}
	
	public UserData selectOneUser(String userName) {
		return userMapper.selectOneUser(userName);
	}
	
	public List<UserData> selectAllUser() throws Exception {
		return userMapper.selectAllUser();
	}
	
	public UserData idCheck(String userEmail) {
//		return userMapper.selectOneUser(userEmail); 오타인 것 같아 바꿨습니다. 현빈씨 보는데로 주석은 지워주세요 ^^
		return userMapper.idCheck(userEmail);
	}
	
	public List<String> nameCheck() {
		return userMapper.selectNameCheck();
	}
	
	
	
}

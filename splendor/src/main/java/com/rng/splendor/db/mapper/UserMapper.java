package com.rng.splendor.db.mapper;

import java.util.List;

import com.rng.splendor.db.dto.UserData;


public interface UserMapper {
	public void insertUser(UserData userData);
	public void updateUser(UserData userData);
	public void deleteUser(String userName);
	public UserData selectOneUser(String userName);
	public List<UserData> selectAllUser() throws Exception;
	
	public UserData idCheck(String userEmail);
}

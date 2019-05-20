package com.rng.splendor.db.service;

import java.io.File;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

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
	
	public UserData updateProfile(String name, MultipartFile file, String introduce, String originalPassword, String newPassword) throws Exception {
		UserData user = userMapper.selectOneUser(name);
		if(file != null && file.getContentType().substring(0, 5).equals("image")) {
			File uploadFolder = new File("D:\\upload");
			if(!uploadFolder.exists()) {
				uploadFolder.mkdirs();
			}
			String user_image = "user_image-" + UUID.randomUUID().toString();
			File targetInServerFile = new File("D:\\upload", user_image);
			FileCopyUtils.copy(file.getBytes(), targetInServerFile);
			user.setUser_image(user_image);
		}
		if(introduce != null) {
			user.setUser_introduce(introduce);
		}
		if(originalPassword != null && newPassword != null) {
			if(originalPassword.equals(user.getUser_password())) {
				user.setUser_password(newPassword);
			}
		}
		userMapper.updateUser(user);
		return user;
	}
	
	
	
}

package com.rng.splendor.db.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rng.splendor.db.dto.GuildJoin;
import com.rng.splendor.db.dto.GuildList;
import com.rng.splendor.db.dto.GuildMemberList;
import com.rng.splendor.db.mapper.GuildListMapper;

@Service
public class GuildListService {

	@Autowired
	GuildListMapper guildListMapper;
	
	public void insertGuild(GuildList guildList) {
		guildListMapper.insertGuild(guildList);
	}
	
	public List<GuildJoin> selectAll() {
		return guildListMapper.selectAll();
	}
	
	public GuildList selectOne(String guildName) {
		return guildListMapper.selectOne(guildName);
	}
	
	public GuildMemberList guildMaster(String guildName) {
		return guildListMapper.guildMaster(guildName);
	};
	
	public GuildMemberList guildIsntMaster(String guildName) {
		return guildListMapper.guildIsntMaster(guildName);
	};
	public List<GuildMemberList> guildMemberList(String guildName) {
		return guildListMapper.guildMemberList(guildName);
	};
	
	public int guildMemberCount(String guildName) {
		return guildListMapper.guildMemberCount(guildName);
	};
}

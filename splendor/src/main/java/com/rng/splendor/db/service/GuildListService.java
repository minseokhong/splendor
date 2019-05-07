package com.rng.splendor.db.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rng.splendor.db.dto.GuildList;
import com.rng.splendor.db.mapper.GuildListMapper;

@Service
public class GuildListService {

	@Autowired
	GuildListMapper guildListMapper;
	
	public void insertGuild(GuildList guildList) {
		guildListMapper.insertGuild(guildList);
	}
	
	public List<GuildList> selectAll() {
		return guildListMapper.selectAll();
	}
}

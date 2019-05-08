package com.rng.splendor.db.mapper;

import java.util.List;

import com.rng.splendor.db.dto.GuildList;

public interface GuildListMapper {
	
	public void insertGuild(GuildList guildList);
	public void updateinsertGuild(GuildList guildList);
	public void deleteinsertGuild();
	public List<GuildList> selectAll();
	
	public GuildList selectOne(String guildName);
	
}

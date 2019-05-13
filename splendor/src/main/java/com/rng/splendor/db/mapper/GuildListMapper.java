package com.rng.splendor.db.mapper;

import java.util.List;

import com.rng.splendor.db.dto.GuildJoin;
import com.rng.splendor.db.dto.GuildList;
import com.rng.splendor.db.dto.GuildMemberList;

public interface GuildListMapper {
	
	public void insertGuild(GuildList guildList);
	public void updateinsertGuild(GuildList guildList);
	public void deleteinsertGuild();
	public List<GuildJoin> selectAll();
	
	public GuildList selectOne(String guildName);
	
	public GuildMemberList guildMaster(String guildName);
	public GuildMemberList guildIsntMaster(String guildName);
	public List<GuildMemberList> guildMemberList(String guildName);
	
	public int guildMemberCount(String guildName);
	
	
	
}

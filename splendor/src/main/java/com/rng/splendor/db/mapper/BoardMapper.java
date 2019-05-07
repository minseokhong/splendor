package com.rng.splendor.db.mapper;

import com.rng.splendor.db.dto.BoardData;

public interface BoardMapper {
	
	public void insertBoard(BoardData boardData) throws Exception;
	public void updateBoard(BoardData boardData);
	public void deleteBoard(int boardNum);
	
	

}

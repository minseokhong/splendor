package com.rng.splendor.db.mapper;

import java.util.List;

import com.rng.splendor.db.dto.BoardData;

public interface BoardMapper {
	
	public List<BoardData> selectBoardList() throws Exception; //게시물 리스트 조회
	
	public void insertBoard(BoardData boardData) throws Exception; //게시물 등록
	
	public void updateBoard(BoardData boardData)throws Exception; //게시물 수정
	
	public void deleteBoard(int boardNum)throws Exception; //게시물 삭제
	
	public BoardData selectBoardByNum(BoardData boardData) throws Exception; //게시물 조회
	
	
	

}

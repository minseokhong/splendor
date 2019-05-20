package com.rng.splendor.db.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rng.splendor.db.dto.BoardData;
import com.rng.splendor.db.mapper.BoardMapper;

@Service
public class BoardService {
	
	@Autowired
	BoardMapper boardMapper;
	
	public void insertBoard(BoardData boardData) throws Exception {
		boardMapper.insertBoard(boardData);
	}
	
	public List<BoardData> boardListService() throws Exception{
		return boardMapper.selectBoardList();
	}
	
	public BoardData boardDetailService(int board_num) throws Exception{
		return boardMapper.boardDetail(board_num);
	}
	
	public BoardData readBoard(int board_num) throws Exception {
		BoardData board = boardDetailService(board_num);
		
		board.setBoard_count(board.getBoard_count() + 1);
		boardMapper.readBoard(board);
		
		return  board;
	}
	

}

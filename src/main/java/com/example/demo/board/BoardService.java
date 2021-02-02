package com.example.demo.board;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardService {
	@Autowired
	private BoardMapper mapper;
	
	void addBoard(Board b) {
		mapper.insert(b);
	}
	
	Board getBoardByNum(int num) {
		return mapper.select(num);
	}
	
	List getBoardById(String id) {
		return mapper.selectById(id);
	}
	
	List getAllBoard() {
		return mapper.selectAll();
	}
	
	void delBoard(int num) {
		mapper.delete(num);
	}
	
	void update(Board b) {
		mapper.update(b);
	}
}

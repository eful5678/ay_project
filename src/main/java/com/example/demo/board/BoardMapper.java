package com.example.demo.board;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BoardMapper {
	void insert(Board b);
	Board select(int num);
	List selectById(String id);
	List selectAll();
	void delete(int num);
	void update(Board b);
	
	
}

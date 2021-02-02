package com.example.demo.reply;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface RepMapper {

	void insert(Reply r);

	Reply select(int num);

	List selectByBoardNum(int board_num);

	void delete(int num); //해당 댓글만 지우기
	
	//void delete(int board_num); 게시판이 삭제되면 같이 지우기. 이거 필요한가요??
}

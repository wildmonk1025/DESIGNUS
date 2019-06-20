package com.designus.www.dao;

import java.util.List; 
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.designus.www.bean.Board;

//import org.springframework.stereotype.Repository;

//@Repository
public interface IboardDao {

	boolean reviewBoardyhWrite(Board b);

	boolean reviewfileInsert(Map<String, String> fMap);

	boolean goods(String idw);
  
	List<Board> getreviewboardlist();
}

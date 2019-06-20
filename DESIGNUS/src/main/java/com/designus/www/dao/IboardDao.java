package com.designus.www.dao;

import java.util.List; 
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.designus.www.bean.Board;
import com.designus.www.bean.Notify;

//import org.springframework.stereotype.Repository;

//@Repository
public interface IboardDao {

	boolean reviewBoardyhWrite(Board b);

	boolean reviewfileInsert(Map<String, String> fMap);

	boolean goods(String idw);

	String getRevBoardUserName(Notify nf);

	String getRevItemTitle(Notify nf);

	String getAuBoardUserName(Notify nf);

	String getAuItemTitle(Notify nf);

	void setNotifyboardyh(Notify nf);

	int getRAPNumSel(@Param("ptnum")int ptnum);

	int getAUPNumSel(@Param("ptnum")int ptnum);
  
	List<Board> getreviewboardlist();

	Board getboardlistInfo(@Param("num")int num);

	Board getboardimgInfo(@Param("num")int num);
}

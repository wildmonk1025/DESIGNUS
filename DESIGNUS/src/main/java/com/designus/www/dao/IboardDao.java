package com.designus.www.dao;

import java.util.List; 
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.designus.www.bean.Board;
import com.designus.www.bean.BoardComment;
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
  
	List<Board> getreviewboardlist(int num);

	Board getboardlistInfo(@Param("num")int num);

	List<Board> getboardimgInfo(@Param("num")int num);

	void getviewInfo(@Param("num")int num);

	void getreviewlike(@Param("num")int bd_num);

	int getrevListCount(@Param("cgcode")int cgcode);

	int getBoardConut();

	void getreviewchange(@Param("bd_num") int bd_num,@Param("bd_contents") String bd_contents, @Param("bd_mbid")String bd_mbid);
	
	void getreviewdelete(@Param("bd_num") int bd_num,@Param("bd_contents") String bd_contents, @Param("bd_mbid")String bd_mbid);
	
	void getreviewimgdel(@Param("bd_num") int bd_num,@Param("bd_contents") String bd_contents, @Param("bd_mbid")String bd_mbid);

	boolean getreviewcomment(Map<String, Object> map);

	List<BoardComment> getreviewselect(@Param("num") int num);

	void getreviewdel(@Param("bd_num") int bd_num);

	void setNotifyStepfive(Notify nf);




}

package com.designus.www.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.designus.www.bean.Basket;
import com.designus.www.bean.Major;
import com.designus.www.bean.Member;

//import org.springframework.stereotype.Repository;

//@Repository
public interface ImypageDao {

	Member privacyeditSelect(String id);

	boolean memberreviseupdate(Member mb);

	String withdrawalconfirmselect(String id);

	void withdrawalconfirmDelete(Member mb);

	Member withdrawalconfirmselect2(String mb_id);

	boolean withdrawalconfirmInsert(Member mmd);

	boolean nortowriapplyInsert(Major mj);

	boolean nortowriapplyupdate(String mj_id);

	List<Basket> basketAuctionselect(String id);

	List<Basket> basketRevAuctionselect(String id);

	List<Basket> basketSponsorselect(String id);

	List<Basket> basketFrmSelect(@Param("num") int num,@Param("is") String id);

	int getBoardCount(String id);
  
  
}

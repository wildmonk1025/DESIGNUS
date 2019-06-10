package com.designus.www.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.designus.www.bean.AuctionProgress;
import com.designus.www.bean.Basket;
import com.designus.www.bean.Board;
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

	List<Basket> basketFrmSelect(@Param("num") int num,@Param("id") String id);

	int getBoardCount(String id);

	List<Basket> basketFrmRSelect(@Param("num") int num,@Param("id") String id);

	List<Basket> basketFrmSSelect(@Param("num") int num,@Param("id") String id);

	int getrevCount(String id);

	int getsponCount(String id);

	List<AuctionProgress> auctionMyOrderListSelect(String id);

	

	int getSetpCount(String id);



	boolean aucapplyupdate(AuctionProgress ap);

	boolean aucapplyMbNupdate(AuctionProgress ap);

	boolean aucapplyMbWupdate(AuctionProgress ap);

  
}

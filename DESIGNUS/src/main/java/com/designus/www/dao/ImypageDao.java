package com.designus.www.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.designus.www.bean.AuctionProgress;
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

	List<Basket> basketFrmSelect(@Param("num") int num,@Param("id") String id);

	int getBoardCount(String id);

	List<Basket> basketFrmRSelect(@Param("num") int num,@Param("id") String id);

	List<Basket> basketFrmSSelect(@Param("num") int num,@Param("id") String id);

	int getrevCount(String id);

	int getsponCount(String id);

	List<AuctionProgress> auctionMyOrderListSelect(String id);

	List<AuctionProgress> auctionMyOrderListSelectstep(@Param("id") String id, @Param("step") int step,@Param("num") int num);

	List<AuctionProgress> auctionMyOrderListSelectstep2(@Param("id") String id, @Param("step") int step,@Param("num") int num);

	List<AuctionProgress> auctionMyOrderListSelectstep3(@Param("id") String id, @Param("step") int step,@Param("num") int num);

	List<AuctionProgress> auctionMyOrderListSelectstep4(@Param("id") String id, @Param("step") int step,@Param("num") int num);

	int getSetpCount(@Param("id") String id, @Param("step") int step);

	int getSetpCount2(@Param("id") String id, @Param("step") int step);

	int getSetpCount3(@Param("id") String id, @Param("step") int step);

	int getSetpCount4(@Param("id") String id, @Param("step") int step);
  
  
}

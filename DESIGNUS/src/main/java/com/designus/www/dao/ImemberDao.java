package com.designus.www.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.designus.www.bean.Auction;
import com.designus.www.bean.AuctionProgress;
import com.designus.www.bean.Major;
import com.designus.www.bean.Member;
import com.designus.www.bean.SponsorProgress;
import com.designus.www.bean.revAuctionProgress;

//import org.springframework.stereotype.Repository;

//@Repository
public interface ImemberDao {

	boolean memberapplyInsert(Member mb);

	boolean wrimemberapplyInsert(Member mb);

	boolean wrimajorInsert(Major mj);

	String getSecurityPwd(String mb_id);

	Member getMemberInfo(String mb_id);

	int memberlapcheck(String mbid);

	String memberFind(Member mb_id);


	int memberNpoint(AuctionProgress ap);

	

	Member getMemberNameInfo(Member mb);
	
	Member getMemberpwInfo(Member mb);

	int getMemberPwUpdate(Member mb);

	int memberWpoint(AuctionProgress ap);

	int ravmemberNpoint(revAuctionProgress rap);

	int memberWrevpoint(revAuctionProgress rap);

	void setNotifyAuctionApply(Member mb);

	void setNotifyAuctionWriInsert(Member mb);

	void setNotifyAuctionWriFLogin(Member mb);

	Member getMemberclick(String mb_id);

	Integer funmemberNpoint(SponsorProgress sp);

	Member getMemclc(@Param("mb_id") String mb_id);



}

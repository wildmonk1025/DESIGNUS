package com.designus.www.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.designus.www.bean.Auction;
import com.designus.www.bean.Category;
import com.designus.www.bean.Notify;
import com.designus.www.bean.RealTimeSearchRanking;
import com.designus.www.bean.RevAuction;
import com.designus.www.bean.Sponsor;
import com.google.gson.JsonElement;

//import org.springframework.stereotype.Repository;

//@Repository
public interface IcommonDao {



	List<Auction> getbestInfo();

	List<RevAuction> getbestInfo2();
	
	List<Sponsor> getbestInfo3();

	List<RealTimeSearchRanking> getSearchRankingSelect();

	List<RealTimeSearchRanking> getSearchingSelect(@Param("word") String word);

	void searchingInsert(@Param("word") String word);

	void searchingUpdate(@Param("word") String word);

	List<Category> categorySelect();

	List<Notify> notificationSelect(@Param("id") String id);

	int updateArmUpdate(Notify nf);

 
}

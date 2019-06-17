package com.designus.www.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.designus.www.bean.Auction;
import com.designus.www.bean.RealTimeSearchRanking;

//import org.springframework.stereotype.Repository;

//@Repository
public interface IcommonDao {



	List<Auction> getbestInfo();

	List<Auction> getnewInfo();

	List<Auction> getimgInfo();

	List<RealTimeSearchRanking> getSearchRankingSelect();



  
  
}

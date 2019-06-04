package com.designus.www.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.designus.www.bean.RevAuction;

//import org.springframework.stereotype.Repository;

//@Repository
public interface IRevAuctionDao {

	boolean revAuctionSubmitInsert(RevAuction ra);
  
  
}

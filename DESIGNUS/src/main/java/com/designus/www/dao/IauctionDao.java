package com.designus.www.dao;

import java.util.List;

import com.designus.www.bean.Auction;

//import org.springframework.stereotype.Repository;

//@Repository
public interface IauctionDao {

	boolean getAuctionWriteInsert(Auction au);

	List<Auction> getAuctionListSelect(Auction au);

  
  
}

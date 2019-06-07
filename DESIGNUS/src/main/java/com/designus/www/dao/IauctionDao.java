package com.designus.www.dao;

import java.util.List;

import com.designus.www.bean.Auction;
import com.designus.www.bean.Basket;

//import org.springframework.stereotype.Repository;

//@Repository
public interface IauctionDao {

	boolean getAuctionWriteInsert(Auction au);

	List<Auction> getAuctionListSelect(Auction au);

	List<Auction> getAuctionReadSelect(Auction au);

	int getAuctionBasketSelect(Basket bk);

	boolean getAuctionBasketInsert(Basket bk);

	boolean getAuctionBasketDelete(Basket bk);

  
  
}

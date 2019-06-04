package com.designus.www.dao;

import org.springframework.stereotype.Repository;

import com.designus.www.bean.RevAuction;

//import org.springframework.stereotype.Repository;

@Repository
public interface IRevAuctionDao {

	boolean revAuctionSubmitInsert(RevAuction revauction);


  
}

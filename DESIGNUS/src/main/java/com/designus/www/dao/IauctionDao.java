package com.designus.www.dao;

import java.util.List;

import com.designus.www.bean.Auction;
import com.designus.www.bean.AuctionTender;
import com.designus.www.bean.Basket;

//import org.springframework.stereotype.Repository;

//@Repository
public interface IauctionDao {

	boolean getAuctionWriteInsert(Auction au);

	List<Auction> getAuctionListSelect(Auction au);

	Auction getAuctionReadSelect(Auction au);

	int getAuctionBasketSelect(Basket bk);

	boolean getAuctionBasketInsert(Basket bk);

	boolean getAuctionBasketDelete(Basket bk);

	int getAuctionTenderPrice(AuctionTender at);

	void setAuctionTenderI(AuctionTender at);

	void setAuctionTenderDel(AuctionTender at);

	String auctionTenderSel(AuctionTender at);

	void setAuctionTenderT(AuctionTender at);

	int getAuctionTenderQty(AuctionTender at);

	List<AuctionTender> getAuctionTenderList(AuctionTender at);

	List<Auction> getAuctionWriterListSel(Auction au);

	String getAuctionInfoID(Auction au);

	void setAuctionUT(AuctionTender at);

	int getAuctionWriteSel(Auction au);

	void setAuctionUTI(AuctionTender at);

	void setAuctionUTT(AuctionTender at);

	String getAuctionWriteIdSel(Auction au);
	// 출품 이미지 등록 시작
	void AuctionImageInsert1(Auction au);
	void AuctionImageInsert2(Auction au);
	void AuctionImageInsert3(Auction au);
	void AuctionImageInsert4(Auction au);
	// 출품 이미지 등록 끝

	void setAuctionTenderIns(Auction au);

	String getAuctionImgSel(Auction au);



  
  
}

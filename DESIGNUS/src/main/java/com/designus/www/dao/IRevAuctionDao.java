package com.designus.www.dao;

import java.util.List;

import com.designus.www.bean.Basket;
import com.designus.www.bean.RevAuction;
import com.designus.www.bean.RevAuctionTender;

//import org.springframework.stereotype.Repository;

public interface IRevAuctionDao {

	int revAuctionSubmitInsert(RevAuction ra);

	List<RevAuction> getRevAuctionListSelect(RevAuction rau);

	RevAuction revAuctionReadSelect(RevAuction ra_num);

	String setRevAuctionTenderMinValue(RevAuction ra_num);

	String setRevAuctionTenderMaxValue(RevAuction ra_num);

	int getrevAuctionBasketSelect(Basket bk);

	boolean getrevAuctionBasketInsert(Basket bk);

	boolean getrevAuctionBasketDelete(Basket bk);

	List<RevAuctionTender> revAuctionAjaxSelect(RevAuctionTender rat_ranum);

	int revAuctionApplyDelete(RevAuctionTender rat);

	boolean revAuctionApplyInsert(RevAuctionTender rat);
}

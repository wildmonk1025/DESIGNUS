package com.designus.www.bean;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Alias("auctiontender")

@Data
public class AuctionTender {
	int    aut_aunum;
	String aut_mbid;
	int    aut_price;
	String aut_kind;
	int    aut_qty;
	String aut_date;
	String au_title;
	String au_date;
	int aut_maxprice;
	String aut_notify;
}

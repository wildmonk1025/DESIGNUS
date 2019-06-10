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
}

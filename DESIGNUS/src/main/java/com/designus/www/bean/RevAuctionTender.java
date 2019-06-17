package com.designus.www.bean;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Alias("revauctiontender")
@Data
public class RevAuctionTender {
	int    rat_ranum;
	String rat_mbid_w;
	int    rat_price;
	String rat_file;
	int    rat_days;
	String rat_decide;
	
	String rat_mbid_n;
	String rat_notify;
}

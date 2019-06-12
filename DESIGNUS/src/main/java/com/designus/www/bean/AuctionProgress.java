package com.designus.www.bean;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Alias("auctionprogress")
@Getter
@Setter
public class AuctionProgress {
	int    aup_ptnum;
	int    aup_ranum;
	String aup_mbid_n;
	String aup_name;
	String aup_address;
	String aup_phone;
	int    aup_qty;
	int    aup_price;
	String aup_track;
	int    aup_step;
	String aui_img;
	String au_mbid_w;
	String au_title;
    String aut_kind;
    int ponitN;
    int ponitW;
    String aut_date;
}

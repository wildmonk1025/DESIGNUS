package com.designus.www.bean;

import org.apache.ibatis.type.Alias;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Alias("revauctionprogress")
@Getter
@Setter
public class revAuctionProgress {
	int    rap_ptnum;
	int    rap_ranum;
	String rap_mbid_n;
	String rap_name;
	String rap_address;
	String rap_phone;
	String rap_mbid_w;
	int    rap_price;
	String rap_track;
	int	   rap_days;
	int    rap_step;
}

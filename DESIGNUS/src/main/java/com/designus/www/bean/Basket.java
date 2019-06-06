package com.designus.www.bean;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Alias("basket")
@Data


public class Basket {
	int    rab_ranum;
	String rab_mbid;
	int    ab_aunum;
	String ab_mbid;
	int    sb_ssnum;
	String sb_mbid;
}

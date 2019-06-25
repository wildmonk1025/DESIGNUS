package com.designus.www.bean;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Alias("basket")
@Getter
@Setter
public class Basket {
	int    rab_ranum;
	String rab_mbid;
	String ra_image;
	String ra_title;
	int    sb_ssnum;
	String sb_mbid;
	String ssi_img;
	String ss_title;
	int    ab_aunum;
	String ab_mbid;
	String aui_img;
	String au_title;
	String au_inprice;
}

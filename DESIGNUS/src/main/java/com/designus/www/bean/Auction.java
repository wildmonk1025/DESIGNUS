package com.designus.www.bean;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Alias("auction")
@Data

public class Auction {
	int    au_num;
	String au_mbid_w;
	String au_title;
	int    au_cgcode;
	int    au_qty;
	int    au_minprice;
	int    au_inprice;
	String au_contents;
	String au_date;
	String aui_img;
	String aui_imgSysName1;
	String aui_imgSysName2;
	String aui_imgSysName3;
	String aui_imgSysName4;
	int au_count;
	int aut_price;
}

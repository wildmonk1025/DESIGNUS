package com.designus.www.bean;

import java.security.Timestamp;

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
	String aui_imgSysName;
	int au_count;
}

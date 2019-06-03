package com.designus.www.bean;

import java.security.Timestamp;

import org.apache.ibatis.type.Alias;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.service.AuctionMM;

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
	Timestamp au_date;
	String aui_imgSysName;
	
	
}

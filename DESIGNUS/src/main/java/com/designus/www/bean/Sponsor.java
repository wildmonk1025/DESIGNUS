package com.designus.www.bean;

import java.security.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Getter @Setter
public class Sponsor {
	int    ss_num;
	String ss_mbid_w;
	String ss_title;
	int    ss_price;
	int    ss_goalqty;
	String ss_contents;
	Timestamp ss_date;
	String ssi_imgSysName;
}

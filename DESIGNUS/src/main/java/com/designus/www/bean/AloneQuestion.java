package com.designus.www.bean;

import java.security.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
@Alias("alonequestion")
@Getter
@Setter
public class AloneQuestion {
	int    aq_num;
	String aq_mbid;
	String aq_tye;
	String aq_title;
	String aq_contents;
	String aq_date;
	String aqi_img;
	int kind;
	String abc;
}

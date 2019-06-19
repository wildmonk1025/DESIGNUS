package com.designus.www.bean;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Alias("question")
@Getter @Setter
public class Question {
	int aq_num;
	String aq_mbid;
	String aq_tye;
	String aq_title;
	String aq_contents;
	String aq_date;
	String aqi_img;
}

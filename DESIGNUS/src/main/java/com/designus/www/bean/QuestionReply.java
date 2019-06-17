package com.designus.www.bean;


import org.apache.ibatis.type.Alias;

import lombok.Data;

@Alias("questionreply")
@Data
public class QuestionReply {
	int    qr_rnum;
	int    qr_aqnum;
	String qr_type;
	String qr_mbid;
	String qr_title;
	String qr_contents;
	String qr_date;
	String aqi_imgSysName;
	
	String qr_notify;
}

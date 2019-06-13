package com.designus.www.bean;

import java.security.Timestamp;

import org.apache.ibatis.type.Alias;

@Alias("questionreply")
public class QuestionReply {
	int    qr_rnum;
	int    qr_aqnum;
	String qr_contents;
	String qr_date;
}

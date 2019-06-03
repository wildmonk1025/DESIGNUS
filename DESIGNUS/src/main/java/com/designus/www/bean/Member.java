package com.designus.www.bean;

import org.apache.ibatis.type.Alias;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;




@Alias("member")
@Getter @Setter
public class Member {
	String mb_id;
	String mb_pw;
	String mb_name;
	String mb_birth;
	String mb_profile;
	String mb_address;
	String mb_email;
	int    mb_point;
	String mb_grade;
	int    mb_ccnt;
	
	
}

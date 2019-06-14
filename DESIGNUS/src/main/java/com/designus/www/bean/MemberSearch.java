package com.designus.www.bean;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

//테이블명 : MEMBERSEARCH 동의어 : MBS
@Alias("membersearch")
@Getter
@Setter
public class MemberSearch {
	String mb_id;
	String mb_pw;
	String mb_name;
	String mb_birth;
	String mb_profile;
	String mb_address;
	String mb_email;
	int mb_point;
	String mb_grade;
	int mb_ccnt;
	int mj_cgcode;
	String mj_portf;
	String mj_contents;
	int mj_like;
}

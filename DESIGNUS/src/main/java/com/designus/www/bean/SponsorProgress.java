package com.designus.www.bean;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Alias("sponpro")
@Getter
@Setter
public class SponsorProgress {
	int ssp_ptnum;// 거래번호
	int ssp_ssnum;// 후원번호
	String ssp_mbid_n;// 후원인 ID
	String ssp_name;// 이
	String ssp_address;// 주소
	String ssp_phone;// 연락처
	String ssp_track;// 운송장번호
	int ssp_step;// 스텝
	String ssi_img;// 첨부사진
	String ss_mbid_w;// 작가ID
	String ss_title;// 후원제목
	int ss_price;// 후원금맥
	int ss_goalqty;// 목표주문량
	String ss_contents;// 상품설명
	String ss_date;// 등록일
	String sst_mbid;// 후원 밀어주기 아이디
	String end_date;
	int ssp_count;

}

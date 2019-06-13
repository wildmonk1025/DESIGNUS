package com.designus.www.bean;

import org.apache.ibatis.type.Alias;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Alias("revauctionprogress")
@Getter
@Setter
public class revAuctionProgress {
	int    rap_ptnum;//거래번호
	int    rap_ranum;//상품번호
	String rap_mbid_n;//일반 아이디
	String rap_name;//이름
	String rap_address;//주소
	String rap_phone;//핸드폰 번호
	String rap_mbid_w;//작가 아이디
	int    rap_price;//상품 가격
	String rap_track;// 운송장 번호
	int	   rap_days;//상품 소요시간
	int    rap_step;//상품 스텝
	String ra_image;//상품 이미지
	String ra_title;//상품 이름
	String ra_oc;//공개,비공개
	String ra_mbid;//상품 올린 아이디
	
	
}

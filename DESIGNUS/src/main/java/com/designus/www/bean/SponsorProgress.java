package com.designus.www.bean;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Alias("sponpro")
@Getter
@Setter
public class SponsorProgress {
	int ssp_ptnum;
	int ssp_ssnum;
	String ssp_mbid_n;
	String ssp_name;
	String ssp_address;
	String ssp_phone;
	String ssp_track;
	int ssp_step;
}

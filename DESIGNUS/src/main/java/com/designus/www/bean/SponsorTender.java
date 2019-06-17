package com.designus.www.bean;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Alias("sponsortender")
@Getter
@Setter
public class SponsorTender {
	int sst_ssnum;
	String sst_mbid;
}

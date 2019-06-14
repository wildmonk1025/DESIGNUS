package com.designus.www.bean;


import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Alias("report")
@Getter @Setter
public class Report {
	int    rp_num;
	String rp_mbid_d;
	String rp_mbid_a;
	String rp_locate;
	String rp_reason;
	String rp_title;
	String rp_contents;
	String rpi_img;
	String rp_date;
	String rqi_imgSysName;
}

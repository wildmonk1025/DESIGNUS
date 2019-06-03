package com.designus.www.bean;

import java.security.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Alias("ra")
@Data
public class RevAuction {
	int    ra_num;
	String ra_mbid;
	String ra_title;
	int    ra_cgcode;
	String ra_image;
	String ra_file;
	String ra_oc;
	Timestamp ra_date;
	String ra_contents;
}

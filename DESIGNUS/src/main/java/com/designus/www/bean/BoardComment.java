package com.designus.www.bean;

import java.security.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
@Alias("boardcomment")
@Getter
@Setter
public class BoardComment {
	int    bdc_rnum;
	int    bdc_bdnum;
	String bdc_mbid;
	String bdc_contents;
	String bdc_date;
}

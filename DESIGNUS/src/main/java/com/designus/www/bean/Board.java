package com.designus.www.bean;

import java.security.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Alias("board")
@Getter
@Setter
public class Board {
	int    bd_num;
	String bd_kind;
	String bd_mbid;
	String bd_title;
	String bd_contents;
	int    bd_like;
	int    bd_views;
	String bd_date;
	String bd_img;
	
}

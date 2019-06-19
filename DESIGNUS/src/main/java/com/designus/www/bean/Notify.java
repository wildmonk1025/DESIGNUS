package com.designus.www.bean;

import java.security.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Alias("notify")
@Getter
@Setter
public class Notify {
	int    nf_num;
	String nf_mbid_r;
	String nf_mbid_s;
	String nf_contents;
	int    nf_check;
	String nf_date;
	String nf_notify;
}

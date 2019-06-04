package com.designus.www.bean;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Alias("major")
@Getter
@Setter
public class Major {
	String mj_id;
	int mj_cg_code;
	String mj_portf;
	String mj_contents;
	int mj_like;
}

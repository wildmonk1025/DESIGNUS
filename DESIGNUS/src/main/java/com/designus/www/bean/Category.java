package com.designus.www.bean;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Alias("category")
@Data
public class Category {
	String cg_name;
	int    cg_code;
}

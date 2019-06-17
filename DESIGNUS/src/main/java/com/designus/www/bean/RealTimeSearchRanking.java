package com.designus.www.bean;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Alias("rtsr")
@Getter
@Setter
public class RealTimeSearchRanking {
	int rtsr_num;
	String rtsr_word;
	int rtsr_cnt;
}

package com.designus.www.bean;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Alias("qna")
@Data
public class QnA {
	String qna_kind;
	String qna_q;
	String qna_a;
}

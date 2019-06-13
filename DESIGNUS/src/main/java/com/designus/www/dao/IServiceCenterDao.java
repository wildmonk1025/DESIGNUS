package com.designus.www.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.designus.www.bean.QuestionReply;

//import org.springframework.stereotype.Repository;

//@Repository
public interface IServiceCenterDao {

	boolean setAloneQuestion(QuestionReply qr);
  
	void QuestionImageInsert(QuestionReply qr);

	int getQuestionSel(QuestionReply qr);
}

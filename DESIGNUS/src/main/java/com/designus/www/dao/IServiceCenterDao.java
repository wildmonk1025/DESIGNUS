package com.designus.www.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.designus.www.bean.QnA;
import com.designus.www.bean.QuestionReply;
import com.designus.www.bean.Report;

//import org.springframework.stereotype.Repository;

//@Repository
public interface IServiceCenterDao {

	boolean setAloneQuestion(QuestionReply qr);
  
	void QuestionImageInsert(QuestionReply qr);

	int getQuestionSel(QuestionReply qr);

	List<QnA> QnAselect(QnA qna);

	boolean setReport(Report rp);

	int getReportSel(Report rp);

	void ReportImageInsert(Report rp);

}

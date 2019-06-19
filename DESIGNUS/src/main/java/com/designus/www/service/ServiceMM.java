package com.designus.www.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.bean.QnA;
import com.designus.www.bean.QuestionReply;
import com.designus.www.bean.Report;
import com.designus.www.dao.IServiceCenterDao;
import com.designus.www.userClass.UploadFile;
import com.google.gson.Gson;

@Service
public class ServiceMM {
	
	@Autowired
    private HttpSession session;
	@Autowired
	private IServiceCenterDao hDao;
	@Autowired
	private UploadFile upload;
	
	private ModelAndView mav;	
	
	public ModelAndView servicescquestion() {
		mav = new ModelAndView();
		String view ="sc_Question";
		
		
		mav.setViewName(view);
		return mav;
	}

	public ModelAndView sc_questionFrm(MultipartHttpServletRequest multi) {
		mav = new ModelAndView();
		String view = null;
		String id = (String)session.getAttribute("id");
		String type =multi.getParameter("qr_type"); 
		String title = multi.getParameter("qr_title"); 
		String contents = multi.getParameter("qr_contents"); 
		int num = 0;
		QuestionReply qr = new QuestionReply();
		
		System.out.println("[1] id ="+id);
		System.out.println("[1] type ="+type);
		System.out.println("[1] title ="+title);
		System.out.println("[1] contents ="+contents);
		
		qr.setQr_mbid(id);
		qr.setQr_type(type);
		qr.setQr_title(title);
		qr.setQr_contents(contents);
		
		qr.setQr_aqnum(num);
		if(hDao.setAloneQuestion(qr)) {
			num = hDao.getQuestionSel(qr);
			qr.setQr_aqnum(num);
			upload.ServiceUpload(multi,qr);
			qr.setQr_notify(id+" 님이 문의를 접수 하였습니다. ");
			hDao.setNotifyQuestionInsert(qr);
			
			view = "home";
		} else {
			view = "redirect:/servicecenter";
		}
		mav.setViewName(view);
		return mav;
	}

	public String qnaselect(QnA qna) {
		String json =null;
		List<QnA> qList = null;
		qList = hDao.QnAselect(qna);
		if(qList != null) {
			json = new Gson().toJson(qList);
		}
		return json;
	}

	public ModelAndView sc_reportFrm(MultipartHttpServletRequest multi) {
		mav = new ModelAndView();
		String view = null;
		String id_d = (String)session.getAttribute("id");
		String id_a =multi.getParameter("rp_mbid_a"); 
		String locate =multi.getParameter("rp_locate"); 
		String reason = multi.getParameter("rp_reason"); 
		String title = multi.getParameter("rp_title"); 
		String contents = multi.getParameter("rp_contents"); 
		int num = 0;
		
		System.out.println("[8] id_d = "+id_d);
		System.out.println("[8] id_a = "+id_a);
		System.out.println("[8] locate = "+locate);
		System.out.println("[8] reason = "+reason);
		System.out.println("[8] title = "+title);
		System.out.println("[8] contents = "+contents);
		
		Report rp = new Report();
		
		rp.setRp_mbid_d(id_d);
		rp.setRp_mbid_a(id_a);
		rp.setRp_locate(locate);
		rp.setRp_reason(reason);
		rp.setRp_title(title);
		rp.setRp_contents(contents);
		if(!id_d.equals(id_a)) {
		if(hDao.setReport(rp)) {
			num =  hDao.getReportSel(rp);
			rp.setRp_num(num);
			upload.ReportUpload(multi,rp);
			rp.setRp_notify(id_d+" 님 이 "+id_a+" 님 을 신고 하였습니다.");
			hDao.setNotifyReportInsert(rp);
			
			view = "home";
			mav.setViewName(view);
		}else {
			view = "redirect:/servicecenter";
			mav.setViewName(view);
		}
		}
		view = "redirect:/servicecenter";
		mav.setViewName(view);
		return mav;
	}

	
	
	
	
}

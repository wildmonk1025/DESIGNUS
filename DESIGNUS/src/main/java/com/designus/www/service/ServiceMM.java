package com.designus.www.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.bean.QuestionReply;
import com.designus.www.dao.IServiceCenterDao;
import com.designus.www.userClass.UploadFile;

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
			view = "home";
		} else {
			view = "redirect:/servicecenter";
		}
		mav.setViewName(view);
		return mav;
	}
	
	
	
	
}

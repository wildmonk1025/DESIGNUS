package com.designus.www;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.bean.QnA;
import com.designus.www.service.BoardMM;
import com.designus.www.service.ServiceMM;

@Controller
public class WBSController {
	
	@Autowired
	private ServiceMM sem;
	
	@Autowired
	private BoardMM bm;
	
	ModelAndView mav;
	

	
	@RequestMapping(value = "/scquestion")
	public ModelAndView scquestion() {
		mav = new ModelAndView();
		mav = sem.servicescquestion();
		
		return mav;
	}

	@RequestMapping(value = "/sc_questionFrm")
	public ModelAndView sc_questionFrm(MultipartHttpServletRequest multi) {
		mav = new ModelAndView();
		mav = sem.sc_questionFrm(multi);
		return mav;
	}
	
	@RequestMapping(value = "/scqna", method = RequestMethod.GET)
	public ModelAndView scqna(String qnakind) {
		mav = new ModelAndView();
		String view = "sc_QnA";
		
		
		mav.setViewName(view);
		return mav;
	}

	@RequestMapping(value = "/scdeclare" )
	public String scdeclare() {  
		return "sc_112";
	}
	

	@RequestMapping(value = "/sc_reportFrm" )
	public ModelAndView sc_reportFrm(MultipartHttpServletRequest multi) {  
		mav = new ModelAndView();
		mav = sem.sc_reportFrm(multi);
		return mav;
	}
	
	//ajax
	@RequestMapping(value = "/qnaselect",  method = { RequestMethod.GET,
			RequestMethod.POST }, produces = "application/json;charset=utf8")
	public @ResponseBody String qnaselect(@RequestBody QnA qna) {
		String json = sem.qnaselect(qna);
		
		
		return json;
	}
	@RequestMapping(value = "/reviewboard", method = RequestMethod.GET)
	public ModelAndView reviewboardlist() {
		ModelAndView mav = new ModelAndView();
		mav = bm.reviewboardlist();
		return mav;
	
		
		//이용후기 리스트
	
	}

	
	
	
	
	
}

package com.designus.www;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.service.ServiceMM;

@Controller
public class WBSController {
	
	@Autowired
	private ServiceMM sem;
	
	
	ModelAndView mav;
	
	@RequestMapping(value = "/boardlist", method = RequestMethod.GET)
	public String boardlist() {
		
		return "freeboard";
	}
	
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
	public ModelAndView scqna() {
		mav = new ModelAndView();
		String view = "sc_QnA";
		System.out.println("이수원 그것도~ 모르냐~~~아!");
		
		
		mav.setViewName(view);
		return mav;
	}

	@RequestMapping(value = "/scdeclare", method = RequestMethod.GET)
	public String scdeclare() {
		
		return "sc_112";
	}
	
	
	
	
	
	
}

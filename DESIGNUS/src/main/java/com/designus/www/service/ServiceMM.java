package com.designus.www.service;

import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

@Service
public class ServiceMM {

	private ModelAndView mav;	
	
	public ModelAndView servicescquestion() {
		mav = new ModelAndView();
		String view ="sc_Question";
		
		
		mav.setViewName(view);
		return mav;
	}
	
	
	
	
}

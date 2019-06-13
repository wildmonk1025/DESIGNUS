package com.designus.www;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class WBSController {
	@RequestMapping(value = "/boardlist", method = RequestMethod.GET)
	public String boardlist() {
		
		return "freeboard";
	}
	
	@RequestMapping(value = "/scquestion", method = RequestMethod.GET)
	public String scquestion() {
		
		return "sc_Question";
	}
	
	@RequestMapping(value = "/scqna", method = RequestMethod.GET)
	public String scqna() {
		
		return "sc_QnA";
	}

	@RequestMapping(value = "/scdeclare", method = RequestMethod.GET)
	public String scdeclare() {
		
		return "sc_112";
	}
	
	
	
	
	
	
}

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
}
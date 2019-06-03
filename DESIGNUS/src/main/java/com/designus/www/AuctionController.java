package com.designus.www;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AuctionController {
	@RequestMapping(value = "/sponsor", method = RequestMethod.GET)
	public String sponsor() {
		
		return "sponsor";
	}	
	@RequestMapping(value = "/auctionWrite", method = RequestMethod.GET)
	public String auctionWrite() {
		
		return "auctionWrite";
	}	

	
	
}

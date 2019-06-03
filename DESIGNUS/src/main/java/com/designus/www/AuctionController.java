package com.designus.www;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.bean.Auction;
import com.designus.www.service.AuctionMM;

@Controller
public class AuctionController {
	
	/*
	 * @Autowired private CommonMM cm;
	 */
	
	@Autowired
	private AuctionMM aum;
	ModelAndView mav;
	
	@RequestMapping(value = "/sponsor", method = RequestMethod.GET)
	public String sponsor() {
		
		return "sponsor";
	}	
	@RequestMapping(value = "/auctionWrite" )
	public ModelAndView auctionWrite(Auction au) {
		
		mav = aum.AuctionWrite(au);
			
		return mav;
	}
	
	
	
}

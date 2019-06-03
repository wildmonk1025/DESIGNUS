package com.designus.www;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.service.CommonMM;

@Controller
public class AuctionController {
	
	/*
	 * @Autowired private CommonMM cm;
	 */

	ModelAndView mav;
	
	@RequestMapping(value = "/sponsor", method = RequestMethod.GET)
	public String sponsor() {
		
		return "sponsor";
	}	
	@RequestMapping(value = "/auctionWrite", method = RequestMethod.GET)
	public String auctionWrite() {
		
		return "auctionWrite";
	}
	
	@RequestMapping(value = "/revauctionWrite", method = RequestMethod.GET)
	public ModelAndView revauctionWrite() {
		mav = new ModelAndView();
		mav.setViewName("revAuctionWrite"); // joinFrm 하나 생성
		return mav;
	}
	
}

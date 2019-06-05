package com.designus.www;

import java.util.Iterator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.service.RevAuctionMM;

@Controller
public class AuctionController_sub {
	/*
	 * @Autowired private CommonMM cm;
	 */


	@Autowired
	private RevAuctionMM ram;
	ModelAndView mav;

	@RequestMapping(value = "/revauctionWrite", method = RequestMethod.GET)
	public ModelAndView revAuctionWrite() {
		mav = new ModelAndView();
		mav.setViewName("revAuctionWrite"); // joinFrm 하나 생성
		return mav;
	}

	@RequestMapping(value = "/revauctionsubmit", method = RequestMethod.POST)
	public ModelAndView revAuctionSubmit(MultipartHttpServletRequest multi) {
		mav = ram.revAuctionSubmit(multi);
		return mav;
	}
	
	@RequestMapping(value = "/revauctionread", method = RequestMethod.GET)
	public ModelAndView revAuctionRead(int ra_num) {
		///{ra_num}
		//@PathVariable
		mav = ram.revAuctionRead(ra_num);
		return mav;
		}
}
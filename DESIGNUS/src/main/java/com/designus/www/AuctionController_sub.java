package com.designus.www;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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

	ModelAndView mav;

	@Autowired
	private RevAuctionMM ramM;

	@RequestMapping(value = "/revauctionWrite", method = RequestMethod.GET)
	public ModelAndView revAuctionWrite() {
		mav = new ModelAndView();
		mav.setViewName("revAuctionWrite"); // joinFrm 하나 생성
		return mav;
	}

	@RequestMapping(value = "/revauctionsubmit")
	public ModelAndView revAuctionSubmit(MultipartHttpServletRequest multi) {
		mav = new ModelAndView();
		String x = multi.getParameter("ra_image");
		String y = multi.getParameter("ra_file");
		System.out.println("controller단="+x);
		System.out.println(y);
		
		mav = ramM.revAuctionSubmit(multi);
		return mav;
	}
}
package com.designus.www;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AuctionController_sub {	
		/*
		 * @Autowired private CommonMM cm;
		 */

		ModelAndView mav;
		
		@RequestMapping(value = "/revauctionWrite", method = RequestMethod.GET)
		public ModelAndView revauctionWrite() {
			mav = new ModelAndView();
			mav.setViewName("revAuctionWrite"); // joinFrm 하나 생성
			return mav;
		}
		
	}
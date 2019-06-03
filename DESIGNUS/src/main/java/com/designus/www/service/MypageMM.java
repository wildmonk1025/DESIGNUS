package com.designus.www.service;

import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

@Service
public class MypageMM {
      ModelAndView mav;
	public ModelAndView historylist(String list) {
		 mav=new ModelAndView();
		 String view=null;
		if(list=="rev") {
			view="revAuctionMyOrderList";
		}else if(list=="revre") {
			view="revAuctionMyAcceptList";
		}else if(list=="auc") {
			view="auctionMyOrderList";
		}else if(list=="aucre") {
			view="auctionMyAcceptList";
		}else if(list=="spon") {
			view="fundingAcceptList";
		}else if(list=="sponre") {
			view="fundingOrderList";
		}else {
			view="basketFrm";
		}
		 mav.setViewName(view);
		return mav;
	}

}

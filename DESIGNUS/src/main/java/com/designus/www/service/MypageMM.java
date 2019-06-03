package com.designus.www.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.bean.Member;

@Service
public class MypageMM {
	ModelAndView mav;
	@Autowired
	private HttpSession session;
    
	public ModelAndView historylist(String list) {
		mav = new ModelAndView();
		String view = null;
		System.out.println("sddd:" + list);
		if (list.equals("rev")) {
			view = "revAuctionMyOrderList";
		} else if (list.equals("revre")) {
			view = "revAuctionMyAcceptList";
		} else if (list.equals("auc")) {
			view = "auctionMyOrderList";
		} else if (list.equals("aucre")) {
			view = "auctionMyAcceptList";
		} else if (list.equals("spon")) {
			view = "fundingAcceptList";
		} else if (list.equals("sponre")) {
			view = "fundingOrderList";
		} else {
			view = "basketFrm";
		}
		mav.setViewName(view);
		return mav;
	}

	public ModelAndView privacyedit() {
		mav= new ModelAndView();
		//String id=session.getAttribute("id").toString();
	    //mav.addObject("id", id);
	    mav.setViewName("memberEdit");
		return mav;
	}

	public ModelAndView memberout() {
		mav= new ModelAndView();
		//String id=session.getAttribute("id").toString();
	    //mav.addObject("id", id);
	    mav.setViewName("memberDelete");
		return mav;
	}

	public ModelAndView nortowri() {
		mav= new ModelAndView();
		//String id=session.getAttribute("id").toString();
	    //mav.addObject("id", id);
	    mav.setViewName("memberTransform");
		return mav;
	}
}

package com.designus.www.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.bean.Auction;
import com.designus.www.dao.IauctionDao;

@Service

public class AuctionMM {
	@Autowired
	private IauctionDao aDao;
	@Autowired
    private HttpSession session;
	
	private ModelAndView mav;

	public ModelAndView AuctionWrite(Auction au) {
		mav=new ModelAndView();
		String view=null;
		
		/*
		 * if(aDao.getAuctionWriteInsert(au)) { view ="auctionList"; } else { view
		 * ="auctionWrite"; }
		 */
		System.out.println("id = "+au.getAu_mbid_w());
		System.out.println("title = "+au.getAu_title());
		System.out.println("cgcode = "+au.getAu_cgcode());
		System.out.println("qty = "+au.getAu_qty());
		System.out.println("minprice = "+au.getAu_minprice());
		System.out.println("inPrice = "+au.getAu_inprice());
		System.out.println("contents = "+au.getAu_contents());
		
		
		mav.setViewName(view);
		return mav;
	}
	

}

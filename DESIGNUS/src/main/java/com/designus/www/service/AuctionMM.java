package com.designus.www.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;
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

	public ModelAndView AuctionWrite(MultipartHttpServletRequest multi) {
		mav=new ModelAndView();
		String id = (String)session.getAttribute("id");
		String view=null;
		
		/*
		  if(aDao.getAuctionWriteInsert(au)) { 
		  view = "auctionList"; 
		  } else { 
		  view = "auctionWrite"; }
		*/
		
		
		mav.setViewName(view);
		return mav;
	}
	

}

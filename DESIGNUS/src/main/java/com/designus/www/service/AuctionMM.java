package com.designus.www.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.bean.Auction;
import com.designus.www.bean.RevAuction;
import com.designus.www.bean.revAuctionProgress;
import com.designus.www.dao.IRevAuctionDao;
import com.designus.www.dao.IauctionDao;

@Service

public class AuctionMM {
	@Autowired
	private IauctionDao aDao;
	
	@Autowired
	private IRevAuctionDao raDao;
	
	@Autowired
    private HttpSession session;
	
	private ModelAndView mav;

	public ModelAndView auctionWriteSubmit(MultipartHttpServletRequest multi) {
		mav=new ModelAndView();
		String id = (String)session.getAttribute("id");
		String view=null;
			
		  String title = multi.getParameter("au_title"); 
		  int cgcode =Integer.parseInt(multi.getParameter("au_cgcode")); 
		  int qty =Integer.parseInt(multi.getParameter("au_qty")); 
		  int minprice =Integer.parseInt(multi.getParameter("au_minprice")); 
		  int inprice =Integer.parseInt(multi.getParameter("au_inprice")); 
		  String contents =multi.getParameter("au_contents"); 
		  String photo = multi.getParameter("aui_imgSysName");
		
		Auction au = new Auction();
		
		au.setAu_mbid_w(id);
		au.setAu_title(title);
		au.setAu_cgcode(cgcode);
		au.setAu_qty(qty);
		au.setAu_minprice(minprice);
		au.setAu_inprice(inprice);
		au.setAu_contents(contents);
		au.setAui_imgSysName(photo); 
		
		System.out.println("id ="+id);
		System.out.println("title ="+title);
		System.out.println("cgcode ="+cgcode);
		System.out.println("qty ="+qty);
		System.out.println("minprice ="+minprice);
		System.out.println("inprice ="+inprice);
		System.out.println("contents ="+contents);
		System.out.println("photo ="+photo);
		
		
		if(aDao.getAuctionWriteInsert(au)) { 
		  view = "auctionList"; 
		  } else { 
		  view = "auctionWrite";
		  }
		
		
		
		mav.setViewName(view);
		return mav;
	}


	public ModelAndView auctionList(int cgcode) {
		mav=new ModelAndView();
		String view="null";
		List<Auction> auList = null;
		List<RevAuction> raList = null;
		Auction au = new Auction();
		RevAuction rau = new RevAuction();
		au.setAu_cgcode(cgcode);
		rau.setRa_cgcode(cgcode);
		
		auList = aDao.getAuctionListSelect(au);
		raList = raDao.getRevAuctionListSelect(rau);
		//
		
		mav.addObject("auList",auList);
		mav.addObject("raList",raList);
		//mav.addObject("paging", getPaging(num));
		
		view="auctionList";
		
		
		return mav;
	}
	

}

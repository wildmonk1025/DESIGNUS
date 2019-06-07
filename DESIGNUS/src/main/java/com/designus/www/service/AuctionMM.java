package com.designus.www.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.bean.Auction;
import com.designus.www.bean.Basket;
import com.designus.www.bean.RevAuction;
import com.designus.www.bean.revAuctionProgress;
import com.designus.www.dao.IRevAuctionDao;
import com.designus.www.dao.IauctionDao;

import javafx.scene.control.Alert;

@Service
public class AuctionMM {
	@Autowired
	private IauctionDao aDao;
	
	@Autowired
	private IRevAuctionDao rDao;
	
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
		raList = rDao.getRevAuctionListSelect(rau);
		
	      for (int i = 0; i < raList.size(); i++) {
	          //int ra_num=raList.get(i).getRa_num();
	          String y = rDao.setRevAuctionTenderMinValue(raList.get(i));
	          String y2 = rDao.setRevAuctionTenderMaxValue(raList.get(i));
	          {
	             if (y != null)
	                raList.get(i).setRa_min(y);
	             else
	                raList.get(i).setRa_min("-");
	             if (y2 != null)
	                raList.get(i).setRa_max(y2);
	             else
	                raList.get(i).setRa_max("-");
	          }
	       }
		mav.addObject("auList",auList);
		mav.addObject("raList",raList);
		//mav.addObject("paging", getPaging(num));
		
		view="auctionList";
		
		mav.setViewName(view);
		return mav;
	}


	public ModelAndView auctionRead(int au_num) {
		mav=new ModelAndView();
		String view = null;
		String id = (String)session.getAttribute("id");
		List<Auction> audList = null;
		int nb = 1;
		Auction au = new Auction();
		Basket bk = new Basket();
		bk.setAb_mbid(id);
		au.setAu_num(au_num);
		bk.setAb_aunum(au_num);
		audList = aDao.getAuctionReadSelect(au);
		nb = aDao.getAuctionBasketSelect(bk);
		System.out.println("nb ="+nb);
		bk.setAb_aunum(nb);

		System.out.println("number ="+bk.getAb_aunum());
		mav.addObject("audList",audList);
		mav.addObject("nb",bk.getAb_aunum());
		mav.addObject("nb2",nb);
		mav.addObject("au_num",au_num);
		view = "auctionRead";
		mav.setViewName(view);
		
		return mav;
	}

/*  아마 필요 없을듯 한 코드 ajax 로 해결함
	public ModelAndView shopbasket(int ab_aunum) {
		mav = new ModelAndView();
		String id = (String)session.getAttribute("id");
		String view = null;
		Basket bk = new Basket();
		bk.setAb_aunum(ab_aunum);
		bk.setAb_mbid(id);
		
		mav.addObject("au_num",ab_aunum);
		
		int check = aDao.getAuctionBasketSelect(bk);
		
		if(check == 0) {
			aDao.getAuctionBasketInsert(bk);
			view = "auctionRead";
		} 
		if(check > 0) {
			aDao.getAuctionBasketDelete(bk);
			view = "auctionRead";
		}
		
		mav.setViewName(view);
		return mav;
	}
*/
	
	public int basketSelect(int num) {
		String id = (String)session.getAttribute("id");
		String view = null;
		Basket bk = new Basket();
		bk.setAb_aunum(num);
		bk.setAb_mbid(id);
		
		mav.addObject("num",num);
		
		int number = aDao.getAuctionBasketSelect(bk);
		
		if(number == 0) {
			aDao.getAuctionBasketInsert(bk);
			view = "auctionRead";
		} 
		if(number > 0) {
			aDao.getAuctionBasketDelete(bk);
			view = "auctionRead";
		}	
		return number;
	}}

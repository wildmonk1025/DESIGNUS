package com.designus.www.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.bean.Auction;
import com.designus.www.bean.AuctionTender;
import com.designus.www.bean.Basket;
import com.designus.www.bean.RevAuction;
import com.designus.www.bean.revAuctionProgress;
import com.designus.www.dao.IRevAuctionDao;
import com.designus.www.dao.IauctionDao;
import com.designus.www.userClass.UploadFile;

import javafx.scene.control.Alert;

@Service
public class AuctionMM {
	@Autowired
	private IauctionDao aDao;
	
	@Autowired
	private IRevAuctionDao rDao;
	@Autowired
    private HttpSession session;
	@Autowired
	private UploadFile upload;
	
	private ModelAndView mav;

	public ModelAndView auctionWriteSubmit(MultipartHttpServletRequest multi) {
		mav=new ModelAndView();
		String id = (String)session.getAttribute("id");
		String view=null;
		int num = 0;
		String title = multi.getParameter("au_title"); 
		int cgcode =Integer.parseInt(multi.getParameter("au_cgcode")); 
		int qty =Integer.parseInt(multi.getParameter("au_qty")); 
		int minprice =Integer.parseInt(multi.getParameter("au_minprice")); 
		int inprice =Integer.parseInt(multi.getParameter("au_inprice")); 
		String contents =multi.getParameter("au_contents"); 
		Auction au = new Auction();
		au.setAu_mbid_w(id);
		au.setAu_title(title);
		au.setAu_cgcode(cgcode);
		au.setAu_qty(qty);
		au.setAu_minprice(minprice);
		au.setAu_inprice(inprice);
		au.setAu_contents(contents);
		num = aDao.getAuctionWriteSel(au);
		au.setAu_num(num);
		if(aDao.getAuctionWriteInsert(au)) { 
			num = aDao.getAuctionWriteSel(au);
			au.setAu_num(num);
			upload.fileUpImage(multi, au);
			aDao.setAuctionTenderIns(au);
			mav.addObject("au_num",num);
		  view = "redirect:/auctionRead"; 
		  } else { 
		  view = "auctionWrite";
		  }
		
		mav.setViewName(view);
		return mav;
	}


	public ModelAndView auctionList(int cgcode) {
		mav=new ModelAndView();
		String view="null";
		String auimg = null;
		List<Auction> auList = null;
		List<RevAuction> raList = null;
		Auction au = new Auction();
		RevAuction rau = new RevAuction();
		AuctionTender at = new AuctionTender();
		au.setAu_cgcode(cgcode);
		rau.setRa_cgcode(cgcode);
		auList = aDao.getAuctionListSelect(au);
		raList = rDao.getRevAuctionListSelect(rau);
		auimg = aDao.getAuctionImgSel(au);
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
	      
	    mav.addObject("auimg",auimg);
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
		String Wid = null;
		String id = (String)session.getAttribute("id");
		List<AuctionTender> atList = null;
		List<Auction> auwList = null;
		String chkID = null;
		int nb = 1;
		Auction au = new Auction();
		Basket bk = new Basket();
		AuctionTender at = new AuctionTender();
		at.setAut_aunum(au_num);
		atList = aDao.getAuctionTenderList(at);
		bk.setAb_mbid(id);
		au.setAu_num(au_num);
		bk.setAb_aunum(au_num);
		au = aDao.getAuctionReadSelect(au);
		nb = aDao.getAuctionBasketSelect(bk);
		bk.setAb_aunum(nb);
		chkID = aDao.getAuctionInfoID(au);
		
		
		Wid = aDao.getAuctionWriteIdSel(au);
		au.setAu_mbid_w(Wid);
		auwList = aDao.getAuctionWriterListSel(au);
		
		mav.addObject("chkID",chkID);
		mav.addObject("auInfo",au);
		mav.addObject("nb",bk.getAb_aunum());
		mav.addObject("nb2",nb);
		mav.addObject("id",id);
		mav.addObject("au_num",au_num);
		mav.addObject("atList",atList);
		mav.addObject("auwList",auwList);
		view = "auctionRead";
		mav.setViewName(view);
		
		return mav;
	}

	
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
	}


	public ModelAndView auctionReadInbuy(int inbuyQty,int inbuyNum) {
		mav = new ModelAndView();
		String id = (String)session.getAttribute("id");
		String view = "redirect:/auctionMyOrderList";
		int price = 0;
		int totalPrice =0;
		int qty = inbuyQty;
		int Tqty = 0;
		String date = null;
		AuctionTender at = new AuctionTender();
		at.setAut_aunum(inbuyNum);
		at.setAut_mbid(id);
		at.setAut_qty(qty);
		Tqty = aDao.getAuctionTenderQty(at);
		price = aDao.getAuctionTenderPrice(at);
		date = aDao.getAuctionTenderDate(at);
		at.setSut_date(date);
		totalPrice = price * qty; 
		at.setAut_price(totalPrice);
		
		if(Tqty > 0) {
			
			
			aDao.setAuctionTenderDel(at);
			aDao.setAuctionTenderI(at);
			aDao.setAuctionUTI(at);
		}
		mav.setViewName(view);
		return mav;
	}


	public ModelAndView auctionReadTender(int tenderNum,int tenderPrice) {
		mav = new ModelAndView();
		String id = (String)session.getAttribute("id");
		String view = null;
		int price = 0;
		String date = null;
		AuctionTender at= new AuctionTender();
		at.setAut_aunum(tenderNum);
		at.setAut_mbid(id);
		at.setAut_price(tenderPrice);
		price = aDao.auctionTenderSel(at);
		date = aDao.getAuctionTenderDate(at);
		at.setSut_date(date);
		if(price < tenderPrice) {
			aDao.setAuctionTenderT(at);
			aDao.setAuctionUTT(at);
			
			view = "redirect:/auctionMyOrderList";
		}
		if(price >= tenderPrice) {
			mav.addObject("au_num",tenderNum);
			view = "redirect:/auctionRead";
		}
		mav.setViewName(view);
		return mav;
	}}

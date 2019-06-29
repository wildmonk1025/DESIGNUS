package com.designus.www.service;

import java.text.ParseException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.bean.Auction;
import com.designus.www.bean.AuctionTender;
import com.designus.www.bean.Basket;
import com.designus.www.bean.Category;
import com.designus.www.bean.Member;
import com.designus.www.bean.Notify;
import com.designus.www.bean.RevAuction;
import com.designus.www.dao.IRevAuctionDao;
import com.designus.www.dao.IauctionDao;
import com.designus.www.dao.ImypageDao;
import com.designus.www.userClass.DateAdjust;
import com.designus.www.userClass.PagingAuction;
import com.designus.www.userClass.UploadFile;
import com.google.gson.Gson;

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
	
	@Transactional
	public ModelAndView auctionWriteSubmit(MultipartHttpServletRequest multi) {
		mav = new ModelAndView();
		String id = (String) session.getAttribute("id");
		String view = null;
		int num = 0;
		String title = multi.getParameter("au_title");
		int cgcode = Integer.parseInt(multi.getParameter("au_cgcode"));
		int qty = Integer.parseInt(multi.getParameter("au_qty"));
		int minprice = Integer.parseInt(multi.getParameter("au_minprice"));
		int inprice = Integer.parseInt(multi.getParameter("au_inprice"));
		String contents = multi.getParameter("au_contents");
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
		if (aDao.getAuctionWriteInsert(au)) {
			num = aDao.getAuctionWriteSel(au);
			au.setAu_num(num);
			upload.fileUpImage(multi, au);
			mav.addObject("au_num", num);
			au.setAu_contents(id + " 작가님의 상품 " + au.getAu_title() + " 이(가) 정상적으로 등록되었습니다.");
			aDao.setNotifyAuctionInsert(au);

			view = "redirect:/auctionRead";
		} else {
			view = "auctionWrite";
		}

		mav.setViewName(view);
		return mav;
	}

	public ModelAndView auctionList(Integer pageNum, int cgcode) throws ParseException {
		mav = new ModelAndView();
		String view = "null";
		int price = 0;
		List<Auction> auList = null;
		Auction au = new Auction();
		AuctionTender at = new AuctionTender();
		DateAdjust da = new DateAdjust();
		Notify nf = new Notify();
		int num = (pageNum == null) ? 1 : pageNum;

		auList = aDao.getAuctionListSelect(cgcode, num);
	
		for(int i = 0 ; i < auList.size(); i++) {
			boolean new_date3 = da.compareDateToBoolean(auList.get(i).getAu_date());
			if(new_date3 == false) {
				if(aDao.getAuctionKind(auList.get(i).getAu_num()).equals("O")) {
				nf.setNf_mbid_r(auList.get(i).getAu_mbid_w());
				nf.setNf_notify(auList.get(i).getAu_title()+" 상품의 경매가 마감 되었습니다.");
				aDao.setAuctionEnd(nf); // notify 등록 
				
				aDao.updateAuctionKind(auList.get(i).getAu_num()); //auctionKind 변경 O -> C
				};
			};
		};

		for(int i = 0 ; i < auList.size(); i++) {
			boolean new_date4 = da.EndDateToBoolean(auList.get(i).getAu_date());
			if(new_date4 == false) {
				aDao.AuctionEndproduct(auList.get(i).getAu_num());
			};
		};
		
		for (int i = 0; i < auList.size(); i++) {
			String new_date2 = da.changeDateToString(auList.get(i).getAu_date());
			auList.get(i).setAu_date(new_date2);
		}
		
		
		
		mav.addObject("paging", AugetPaging(num, cgcode));
		mav.addObject("auList", auList);
		mav.addObject("cgcode", cgcode);
		view = "auctionList";
		mav.setViewName(view);
		return mav;
	}

	public ModelAndView revauctionList(Integer pageNum, int cgcode) throws ParseException {
		mav = new ModelAndView();
		String view = "null";
		List<RevAuction> raList = null;
		DateAdjust da = new DateAdjust();
		int num = (pageNum == null) ? 1 : pageNum;

		raList = rDao.getRevAuctionListSelect(cgcode, num);

		for (int i = 0; i < raList.size(); i++) {
			// int ra_num=raList.get(i).getRa_num();
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

			String new_date1 = da.changeDateToString(raList.get(i).getRa_date());
			raList.get(i).setRa_date(new_date1);
		}

		mav.addObject("paging", RagetPaging(num, cgcode));
		mav.addObject("raList", raList);
		mav.addObject("cgcode", cgcode);
		view = "revAuctionList";
		mav.setViewName(view);
		return mav;
	}

	private Object AugetPaging(int pageNum1, int cgcode) {
		String a = "auctionList";
		int maxNum = 0;
		int listCount = 9;
		int pageCount = 3;
		String boardName = a;

		maxNum = aDao.getListCount(cgcode);
		PagingAuction paging2 = new PagingAuction(maxNum, pageNum1, listCount, pageCount, cgcode, boardName);
		return paging2.makeHtmlPaging2();

	}

	private Object RagetPaging(int pageNum1, int cgcode) {
		String a = "revauctionList";
		int maxNum = 0;
		int listCount = 9;
		int pageCount = 3;
		String boardName = a;

		maxNum = rDao.getrevListCount(cgcode);
		PagingAuction paging1 = new PagingAuction(maxNum, pageNum1, listCount, pageCount, cgcode, boardName);
		return paging1.makeHtmlPaging1();

	}

	public ModelAndView auctionRead(int au_num)  {
		mav = new ModelAndView();
		String view = null;
		String Wid = null;
		int nb = 1;
		int price = 0;
		String id = (String) session.getAttribute("id");
		List<AuctionTender> atList = null;
		List<Auction> auwList = null;
		List<Category> cgList = null;
		String chkID = null;
		Auction au = new Auction();
		Basket bk = new Basket();
		Member mb = new Member();
		AuctionTender at = new AuctionTender();
		DateAdjust da = new DateAdjust();
		cgList = aDao.getcgCode();
		at.setAut_aunum(au_num);
		mb.setMb_id(id);
		mb.setMb_point(aDao.getPoint(mb));
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
		au.setAui_imgSysName1(aDao.getAuctionImg1(au_num));
		au.setAui_imgSysName2(aDao.getAuctionImg2(au_num));
		au.setAui_imgSysName3(aDao.getAuctionImg3(au_num));
		au.setAui_imgSysName4(aDao.getAuctionImg4(au_num));
		
		mav.addObject("cgList",cgList);
		mav.addObject("point", mb.getMb_point());
		mav.addObject("peice", price);
		mav.addObject("chkID", chkID);
		mav.addObject("auInfo", au);
		mav.addObject("nb", bk.getAb_aunum());
		mav.addObject("nb2", nb);
		mav.addObject("id", id);
		mav.addObject("au_num", au_num);
		mav.addObject("atList", atList);
		mav.addObject("auwList", auwList);
		view = "auctionRead";
		mav.setViewName(view);
		return mav;
	}

	public int basketSelect(int num) {
		String id = (String) session.getAttribute("id");
		String view = null;
		Basket bk = new Basket();
		bk.setAb_aunum(num);
		bk.setAb_mbid(id);

		mav.addObject("num", num);

		int number = aDao.getAuctionBasketSelect(bk);

		if (number == 0) {
			aDao.getAuctionBasketInsert(bk);
			view = "auctionRead";
		}
		if (number > 0) {
			aDao.getAuctionBasketDelete(bk);
			view = "auctionRead";
		}
		return number;
	}

	public ModelAndView auctionReadInbuy(int inbuyQty, int inbuyNum) {
		mav = new ModelAndView();
		String id = (String) session.getAttribute("id");
		String view = null;
		int price = 0;
		int totalPrice = 0;
		int qty = inbuyQty;
		int Tqty = 0;
		int point = 0;
		AuctionTender at = new AuctionTender();
		Member mb = new Member();
		mb.setMb_id(id);
		at.setAut_aunum(inbuyNum);
		at.setAut_mbid(id);
		at.setAut_qty(qty);
		Tqty = aDao.getAuctionTenderQty(at);
		price = aDao.getAuctionTenderPrice(at);
		totalPrice = price * qty;
		at.setAut_price(totalPrice);
		point = aDao.getPoint(mb);
		if (totalPrice < point) {
			aDao.setAuctionTenderDel(at);
			aDao.setAuctionTenderI(at);
			aDao.setAuctionUTI(at);

			at.setAut_mbid(aDao.getAuctionWID(at));
			at.setAu_title(aDao.getAuctionTitle(at));
			at.setAut_notify(id + " 님이 " + at.getAu_title() + " 상품을 " + at.getAut_qty() + " 개 구입 하셧습니다.");
			aDao.setNotifyAuctionTender(at);
			mav.addObject("au_num", inbuyNum);
			view = "redirect:/auctionRead";
		}
		mav.setViewName(view);
		return mav;
	}

	public ModelAndView auctionReadTender(int tenderNum, int tenderPrice) {
		mav = new ModelAndView();
		String id = (String) session.getAttribute("id");
		String view = null;
		int price = 0;
		AuctionTender at = new AuctionTender();
		at.setAut_aunum(tenderNum);
		at.setAut_mbid(id);
		at.setAut_price(tenderPrice);

		if (aDao.auctionTenderSel(at) == null) {
			price = aDao.auctionTenderPriceSel(at);
		} else {
			price = Integer.parseInt(aDao.auctionTenderSel(at));
		}

		if (price < tenderPrice) {
			aDao.setAuctionTenderT(at);
			/* aDao.setAuctionUTT(at); */ // aup 등록 sql
			mav.addObject("au_num", tenderNum);
			view = "redirect:/auctionRead";
		}
		
		if (price >= tenderPrice) {
			mav.addObject("au_num", tenderNum);
			view = "redirect:/auctionRead";
		}
		mav.setViewName(view);
		return mav;
	}

	public ModelAndView auctionWrite() {
		mav = new ModelAndView();
		List<Category> cgList = null; 
		cgList = aDao.getcgCode();
		
		mav.addObject("cgList",cgList);
		mav.setViewName("auctionWrite");
		return mav;
	}

	
	
}

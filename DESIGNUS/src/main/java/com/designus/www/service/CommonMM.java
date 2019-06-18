package com.designus.www.service;

import java.lang.ProcessBuilder.Redirect;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession; 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.bean.Auction;
import com.designus.www.bean.AuctionTender;
import com.designus.www.bean.Member;
import com.designus.www.bean.RealTimeSearchRanking;
import com.designus.www.bean.RevAuction;
import com.designus.www.dao.IRevAuctionDao;
import com.designus.www.dao.IauctionDao;
import com.designus.www.dao.IcommonDao;
import com.designus.www.dao.ImemberDao;
import com.google.gson.Gson;

@Service
public class CommonMM {
	@Autowired
	private IcommonDao cDao;
	@Autowired
	private IRevAuctionDao rDao;
	@Autowired
	private IauctionDao aDao;
	@Autowired
	private HttpSession session;
	private ModelAndView mav;
	/*
	public ModelAndView bestajax(Auction at) {
		mav =  new ModelAndView();
		String view=null;
		List<Auction> aList=null;
		Auction au = new Auction();
		aList = cDao.getbestInfo(au);
		mav.addObject("aList",aList);
		return mav;
	}
	*/
	public String bestajax() {
	         List<Auction> rList=cDao.getbestInfo();
	         System.out.println("이거는되나");
			Gson gs=new Gson();
			String jsonObj=gs.toJson(rList);
			System.out.println(jsonObj);
			System.out.println("여기는??");
		return jsonObj;
	}
	public String newajax() {
	       List<Auction> rList=cDao.getnewInfo();
	         System.out.println("이거는되나");
			Gson gs=new Gson();
			String jsonObj=gs.toJson(rList);
			System.out.println(jsonObj);
			System.out.println("여기는??");
		return jsonObj;
	}
	public String imgajax() {
		List<Auction> rList=cDao.getimgInfo();
        System.out.println("이거는되나");
		Gson gs=new Gson();
		String jsonObj=gs.toJson(rList);
		System.out.println(jsonObj);
		System.out.println("여기는??");
	return jsonObj;
	}
	public String searchRanking() {
		List<RealTimeSearchRanking> sList = cDao.getSearchRankingSelect();
		String json = new Gson().toJson(sList);
		return json;
	}
	public ModelAndView searching(String word) {
		mav = new ModelAndView();
		
		List<RealTimeSearchRanking> check = cDao.getSearchingSelect(word);
		System.out.println("검색어 체크결과="+check);
		if(check.isEmpty()) {
			cDao.searchingInsert(word);
			System.out.println("검색어 insert 성공");
		} else {
			cDao.searchingUpdate(word);
			System.out.println("검색어 update 성공");
		}
		
		List<Auction> auList = aDao.getAuctionListSelect2(word);
		List<RevAuction> raList = rDao.getRevAuctionListSelect2(word);
	      
		mav.addObject("auList",auList);
		mav.addObject("raList",raList);
		//mav.addObject("paging", getPaging(num));
		
		mav.setViewName("auctionList");
		return mav;
	}
	
}

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
import com.designus.www.bean.Member;
import com.designus.www.bean.RealTimeSearchRanking;
import com.designus.www.dao.IcommonDao;
import com.designus.www.dao.ImemberDao;
import com.google.gson.Gson;

@Service
public class CommonMM {
	@Autowired
	private IcommonDao cDao;
	@Autowired
	private ImemberDao mDao;
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
	
}

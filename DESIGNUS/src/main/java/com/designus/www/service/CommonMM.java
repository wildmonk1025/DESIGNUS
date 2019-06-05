package com.designus.www.service;

import java.util.List;

import javax.servlet.http.HttpSession; 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.bean.Auction;
import com.designus.www.bean.Member;
import com.designus.www.dao.IcommonDao;

public class CommonMM {
	@Autowired
	private IcommonDao cDao;
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
	public ModelAndView bestajax() {
		mav =  new ModelAndView();
		String view=null;
		List<Auction> aList=null;
		Auction au = new Auction();
		aList = cDao.getbestInfo(au);
		mav.addObject("aList",aList);
		return mav;
	}
}

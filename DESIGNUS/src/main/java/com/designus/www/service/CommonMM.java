package com.designus.www.service;

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

	public ModelAndView bestajax(Auction at) {
		mav =  new ModelAndView();
		at = cDao.getbestInfo(at.getAu_mbid_w());
		return mav;
	}
}

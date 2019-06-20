package com.designus.www.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.bean.Board;
import com.designus.www.dao.IboardDao;
@Service
public class BoardMM {
	ModelAndView mav;
	
	@Autowired
	IboardDao bDao;
	@Autowired
	private HttpSession session;
	public ModelAndView reviewboardlist() {
		String view = null;
		mav = new ModelAndView();
		List<Board> bdList= bDao.getreviewboardlist();
		System.out.println("dd");
		mav.addObject("bdInfo", bdList);
		view = "reviewboard";
		mav.setViewName(view);
		return mav;
	}
}

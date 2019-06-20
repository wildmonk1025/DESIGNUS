package com.designus.www.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.bean.Board;
import com.designus.www.bean.MemberSearch;
import com.designus.www.dao.IboardDao;
import com.google.gson.Gson;
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
		Board bd =new Board();
		List<Board> bdList= bDao.getreviewboardlist();
		mav.addObject("bdInfo", bdList);
		mav.addObject("bd_num", bd.getBd_num());
		
		view = "reviewboard";
		mav.setViewName(view);
		return mav;
	}
	public String reviewboardlistInfo(int num) {
		System.out.println("dddddd"+num);
		
		Board bList = bDao.getboardlistInfo(num);
		List<Board> iList = bDao.getboardimgInfo(num);
		 bDao.getviewInfo(num);
		
		Map<String, Object> map = new HashMap<>(); 
		map.put("bList", bList);
		map.put("iList", iList);
		Gson gs = new Gson();
		String jsonObj = gs.toJson(map);
		System.out.println(jsonObj);
		return jsonObj;
	}
	public ModelAndView reviewlike(int bd_num) {
		String view = null;
		mav = new ModelAndView();
		bDao.getreviewlike(bd_num);
		System.out.println("ddddd"+bd_num);
		view = "reviewboard";
		mav.setViewName(view);
		return mav;
	}
}

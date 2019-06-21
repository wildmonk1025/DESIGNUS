package com.designus.www.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.userClass.Paging;
import com.designus.www.userClass.PagingBoard;
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
	public ModelAndView reviewboardlist(Integer pageNum) {
		String view = null;
		mav = new ModelAndView();
		Board bd =new Board();
		List<Board> bdList= null;
		int num=(pageNum==null)? 1: pageNum;
		System.out.println("sdaasd"+num);
		bdList=bDao.getreviewboardlist(num);
		System.out.println("size="+bdList.size());
		mav.addObject("bdInfo", bdList);
		mav.addObject("bd_num", bd.getBd_num());
		mav.addObject("paging", getPagingBoard(num));
		
		view = "reviewboard";
		mav.setViewName(view);
		return mav;
	}
	private String getPagingBoard(int pageNum) { //현제 페이지번호
		int maxNum=bDao.getBoardConut(); //전체 글의 개수
		int listCount=10; //페이지당 글의수
		int pageCount=2; //그룹당 페이지의 수
		String boardName="reviewboard"; //게시판이 여러게일떄 의미가 있음
	
		PagingBoard paging= new PagingBoard(maxNum,pageNum,listCount,pageCount,boardName);
	return paging.makeHtmlPaging();
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
	public ModelAndView reviewchange(int bd_num, String bd_contents, String bd_mbid) {
		String view = null;
		mav = new ModelAndView();
		bDao.getreviewchange(bd_num,bd_contents,bd_mbid);
		view = "reviewboard";
		mav.setViewName(view);
		return mav;
	}
}

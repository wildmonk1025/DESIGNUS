package com.designus.www.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.omg.CORBA.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.RequestToViewNameTranslator;

import com.designus.www.userClass.Paging;
import com.designus.www.userClass.PagingBoard;
import com.designus.www.bean.Board;
import com.designus.www.bean.BoardComment;
import com.designus.www.bean.Member;
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
		Board bd = new Board();
		List<Board> bdList = null;
		int num = (pageNum == null) ? 1 : pageNum;
		System.out.println("sdaasd" + num);
		bdList = bDao.getreviewboardlist(num);
		System.out.println("size=" + bdList.size());
		mav.addObject("bdInfo", bdList);
		mav.addObject("bd_num", bd.getBd_num());
		mav.addObject("paging", getPagingBoard(num));

		view = "reviewboard";
		mav.setViewName(view);
		return mav;
	}

	private String getPagingBoard(int pageNum) { // 현제 페이지번호
		int maxNum = bDao.getBoardConut(); // 전체 글의 개수
		int listCount = 10; // 페이지당 글의수
		int pageCount = 2; // 그룹당 페이지의 수
		String boardName = "reviewboard"; // 게시판이 여러게일떄 의미가 있음

		PagingBoard paging = new PagingBoard(maxNum, pageNum, listCount, pageCount, boardName);
		return paging.makeHtmlPaging();
	}
	private String getPagingBoards(int pageNum) { // 현제 페이지번호
		int maxNum = bDao.getBoardConut(); // 전체 글의 개수
		int listCount = 10; // 페이지당 글의수
		int pageCount = 2; // 그룹당 페이지의 수
		String boardName = "popularWriterFrm"; // 게시판이 여러게일떄 의미가 있음
		
		PagingBoard paging = new PagingBoard(maxNum, pageNum, listCount, pageCount, boardName);
		return paging.makeHtmlPaging();
	}

	public String reviewboardlistInfo(int num) {
		System.out.println("dddddd" + num);

		Board bList = bDao.getboardlistInfo(num);
		List<Board> iList = bDao.getboardimgInfo(num);
		bDao.getviewInfo(num);
		List<BoardComment> bdc = bDao.getreviewselect(num);

		Map<String, Object> map = new HashMap<>();
		map.put("bList", bList);
		map.put("iList", iList);
		map.put("bdc", bdc);
		Gson gs = new Gson();
		String jsonObj = gs.toJson(map);
		System.out.println(jsonObj);
		return jsonObj;
	}

	public ModelAndView reviewlike(int bd_num) {
		String view = null;
		mav = new ModelAndView();
		bDao.getreviewlike(bd_num);
		System.out.println("ddddd" + bd_num);
		view = "reviewboard";
		mav.setViewName(view);
		return mav;
	}

	public ModelAndView reviewchange(int bd_num, String bd_contents, String bd_mbid) {
		String view = null;
		mav = new ModelAndView();
		String s = (String) session.getAttribute("id");
		System.out.println("fdd" + s);

		System.out.println("bd_mbid" + bd_mbid);
		if (s.equals(bd_mbid) || s.equals("ADMIN")) {
			bDao.getreviewchange(bd_num, bd_contents, bd_mbid);
			view = "reviewboard";
		} else {
			view = "home";
		}
		mav.setViewName(view);
		return mav;
	}

	public ModelAndView reviewdelete(int bd_num, String bd_contents, String bd_mbid) {
		String view = null;
		mav = new ModelAndView();
		String s = (String) session.getAttribute("id");
		System.out.println("fdd" + s);
		Member mb=new Member();
		String mb_id = null;
		mb_id = bDao.selBoardUserId(bd_num);
		mav.addObject("mb_id",mb_id);
		
		System.out.println("mb_id" + mb_id);
		if (s.equals(mb_id) || s.equals("ADMIN")) {
			System.out.println("번호는="+bd_num);
			bDao.getreviewdel(bd_num);
			bDao.getreviewdelete(bd_num, bd_contents, mb_id);
			bDao.getreviewimgdel(bd_num, bd_contents, mb_id);
			
			
			
			view = "redirect:/reviewboard";
		} else {
			view = "home";
		}
		mav.setViewName(view);
		return mav;
	}

	public ModelAndView reviewcomment(String bdc_contents, int bd_num) {
		String view = null;
		mav = new ModelAndView();
		String s = (String) session.getAttribute("id");
		BoardComment bdc = new BoardComment();
		if (s != null) {
			Map<String, Object> map = new HashMap<>();
			map.put("bd_num", bd_num);
			map.put("s", s);
			map.put("bdc_contents", bdc_contents);

			boolean a = bDao.getreviewcomment(map);

			mav.addObject("bdc_contents", bdc_contents);
			mav.addObject("s", s);
			mav.addObject("msg", "pppp");
			System.out.println("contents=" + bdc_contents + s);
			view = "redirect:/reviewboard";
		} else {
			mav.addObject("msg", "zzz");
			view = "loginBox";
		}
		mav.setViewName(view);
		return mav;
	}

	public ModelAndView Noticedlist(Integer pageNum) {
		String view = null;
		mav = new ModelAndView();
		Board bd = new Board();
		List<Board> bdList = null;
		int num = (pageNum == null) ? 1 : pageNum;
		System.out.println("sdaasd" + num);
		bdList = bDao.getNoticedlist(num);
		System.out.println("size=" + bdList.size());
		mav.addObject("bdInfo", bdList);
		mav.addObject("bd_num", bd.getBd_num());
		mav.addObject("pagings", getPagingBoards(num));

		view = "/popularWriterFrm";
		mav.setViewName(view);
		return mav;
	}

	public String NoticeListInfo(int num) {
		System.out.println("dddddd" + num);

		Board bList = bDao.getboardlistInfo(num);
		bDao.getviewInfo(num);

		Map<String, Object> map = new HashMap<>();
		map.put("bList", bList);
		Gson gs = new Gson();
		String jsonObj = gs.toJson(map);
		System.out.println(jsonObj);
		return jsonObj;
	
	}

	public ModelAndView Noticedelete(int bd_num) {
		String view = null;
		mav = new ModelAndView();
		String s = (String) session.getAttribute("id");
		System.out.println("fdd" + s);

		if ( s.equals("ADMIN")) {
			System.out.println("번호는="+bd_num);
			bDao.getNoticedel(bd_num);
			view = "redirect:/popularWriterFrm";
		} else {
			view = "home";
		}
		mav.setViewName(view);
		return mav;
	}

	public ModelAndView Noticeinsert(String bd_title, String bd_contents) {
		String view = null;
		mav = new ModelAndView();
		String s = (String) session.getAttribute("id");
		if ( s.equals("ADMIN")) {
			bDao.getNoticinsert(bd_title,bd_contents,s);
			System.out.println("요기는? ㅜㅜㅜ");
			view = "redirect:/popularWriterFrm";
		} else {
			view = "home";
		}
		System.out.println("fdd" + s);
		mav.setViewName(view);
		return mav;
	}
	

}

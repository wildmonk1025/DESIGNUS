package com.designus.www.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.bean.Major;
import com.designus.www.bean.Report;
import com.designus.www.dao.IadminDao;
import com.google.gson.Gson;

@Service
public class AdminMM {
	@Autowired
	private HttpSession session;

	private ModelAndView mav;
	@Autowired
	private IadminDao iDao;

	public String declarewritecheck() {
		List<Report> rList = iDao.getrepInfo();

		System.out.println("이거는되나");
		Gson gs = new Gson();
		String jsonObj = gs.toJson(rList);
		System.out.println(jsonObj);
		System.out.println("여기는??");
		return jsonObj;
	}

	public String Declarelist() {
		List<Report> rList = iDao.getrepInfo();

		System.out.println("이거는되나");
		Gson gs = new Gson();
		String jsonObj = gs.toJson(rList);
		System.out.println(jsonObj);
		System.out.println("여기는??");
		return jsonObj;
	}

	public String transformList() {
		List<Major> rList = iDao.gettransInfo();

		System.out.println("이거는되나");
		Gson gs = new Gson();
		String jsonObj = gs.toJson(rList);
		System.out.println(jsonObj);
		System.out.println("여기는??");
		return jsonObj;
	}

	public ModelAndView declareWriteCheck(int rp_num) {
		String view = null;
		mav = new ModelAndView();

		Report rp = new Report();
		// rp.setRp_num(rp_num);
		System.out.println("와?zz" + rp_num);

		rp = iDao.getWriteCheck(rp_num);
		rp.setRp_num(rp_num);
		if (rp_num == rp.getRp_num()) {
			System.out.println("여기와? ㅋㅋㅋㅋ");
			mav.addObject("rp_num", rp.getRp_num());
			mav.addObject("rp_mbid_d", rp.getRp_mbid_d());
			mav.addObject("rp_mbid_a", rp.getRp_mbid_a());
			mav.addObject("rp_locate", rp.getRp_locate());
			mav.addObject("rp_reason", rp.getRp_reason());
			mav.addObject("rp_title", rp.getRp_title());
			mav.addObject("rp_contents", rp.getRp_contents());
			mav.addObject("rp_img", rp.getRpi_img());
			mav.addObject("rp_date", rp.getRp_date());
			view = "declareWriteCheck";
		} else {
			view = "declareWrite";
		}
		mav.setViewName(view);
		return mav;
	}

	public ModelAndView declareNonPermit(int rp_num) {
		mav = new ModelAndView();
		String view = null;
		System.out.println("[1] rp_num =" + rp_num);
		System.out.println("오/..왔내?");
		boolean f2 = iDao.getPerfmit(rp_num);
		boolean f = iDao.getPermit(rp_num);
		System.out.println("와라진짜 ㅡㅡ 다른거좀하자");
		
		if(f && f2) {
			mav.addObject("rp_num", rp_num);
			view = "declareWrite";
		} else {
			System.out.println("삭제 실패");
			view = "home";
		}
		mav.setViewName(view);
		return mav;
	}

}

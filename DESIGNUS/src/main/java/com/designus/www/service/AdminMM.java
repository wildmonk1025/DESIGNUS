package com.designus.www.service;

import java.text.SimpleDateFormat;
import java.util.List;

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
		IadminDao iDao;
	
	public String declarewritecheck() {
		List<Report> rList=iDao.getrepInfo();

        System.out.println("이거는되나");
		Gson gs=new Gson();
		String jsonObj=gs.toJson(rList);
		System.out.println(jsonObj);
		System.out.println("여기는??");
	return jsonObj;
	}
	public String Declarelist() {
		List<Report> rList=iDao.getrepInfo();

        System.out.println("이거는되나");
		Gson gs=new Gson();
		String jsonObj=gs.toJson(rList);
		System.out.println(jsonObj);
		System.out.println("여기는??");
	return jsonObj;
	}
	public String transformList() {
		List<Major> rList=iDao.gettransInfo();

        System.out.println("이거는되나");
		Gson gs=new Gson();
		String jsonObj=gs.toJson(rList);
		System.out.println(jsonObj);
		System.out.println("여기는??");
	return jsonObj;
	}
	public ModelAndView declareWriteCheck(int rp_num) {
		String view=null;
		mav= new ModelAndView();
		
		Report rp = new Report();
		System.out.println("와?zz"+rp);
		
		rp = iDao.getWriteCheck();
		rp.setRp_num(rp_num);
		if(rp_num==rp.getRp_num()) {
		mav.addObject("rp_num", rp.getRp_num());
		mav.addObject("rp_num", rp.getRp_mbid_d());
		mav.addObject("rp_num", rp.getRp_mbid_a());
		mav.addObject("rp_num", rp.getRp_locate());
		mav.addObject("rp_num", rp.getRp_reason());
		mav.addObject("rp_num", rp.getRp_title());
		mav.addObject("rp_num", rp.getRp_contents());
		mav.addObject("rp_num", rp.getRpi_img());
		mav.addObject("rp_num", rp.getRp_date());
		view = "declareWriteCheck";
		}else {
		view = "declareWrite";
		}
		mav.setViewName(view);
		return mav;
	}
	

}

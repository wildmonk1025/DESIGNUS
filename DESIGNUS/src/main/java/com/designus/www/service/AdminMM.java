package com.designus.www.service;

import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

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

	

}

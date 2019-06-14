package com.designus.www;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.bean.Member;
import com.designus.www.service.AdminMM;


@Controller
public class AdminController {

	@Autowired
	private AdminMM adm;
	
	ModelAndView mav;
	@RequestMapping(value = "/adminInfo", method = RequestMethod.GET)
	public String admininfo() {

		return "adminInfo";
	}
	@RequestMapping(value = "/permitWriDetail", method = RequestMethod.GET)
	public String permitWriDetail() {
		
		return "permitWriDetail";
	}

	@RequestMapping(value = "/declareWrite", method = RequestMethod.GET)
	public String declareWrite() {

		return "declareWrite";
	}

	@RequestMapping(value = "/questionList", method = RequestMethod.GET)
	public String questionList() {

		return "questionList";
	}

	@RequestMapping(value = "/memberList", method = RequestMethod.GET)
	public String memberList() {

		return "memberList";
	}

	@RequestMapping(value = "/categoryEdit", method = RequestMethod.GET)
	public String categoryEdit() {

		return "categoryEdit";
	}
	
	@RequestMapping(value = "/permitWriApply", method = RequestMethod.GET)
	public String permitWriApply() {
		
		return "permitWriApply";
	}
	
	@RequestMapping(value = "/declareWriteCheck", method = RequestMethod.GET)
	public ModelAndView declareWriteCheck(int rp_num) {
		System.out.println("이거찍히니?"+rp_num);
		mav = new ModelAndView();
		mav = adm.declareWriteCheck(rp_num);
		return mav;
	}
	@RequestMapping(value = "/declarenonpermit", method = RequestMethod.POST)
	public ModelAndView declareNonPermit(int rp_num,String rp_mbid_a) {
		System.out.println("ㅇㅇ?"+rp_mbid_a);
		mav = adm.declareNonPermit(rp_num);
		return mav;
	}
	@RequestMapping(value = "/declarepermit", method = RequestMethod.POST)
	public ModelAndView declarepermit(int rp_num ,String mb_id) {
		System.out.println("hh?");
		mav = adm.declarepermit(rp_num,mb_id);
		return mav;
	}

}

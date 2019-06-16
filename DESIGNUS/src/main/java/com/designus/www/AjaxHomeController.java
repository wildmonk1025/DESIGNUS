package com.designus.www;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.bean.Auction;
import com.designus.www.bean.Member;
import com.designus.www.service.CommonMM;
import com.designus.www.service.MemberMM;

@RestController
public class AjaxHomeController {
	
	@Autowired
	private CommonMM cm;
	@Autowired
	private MemberMM mm;
	
	ModelAndView mav;
	@RequestMapping(value = "/bestajax", produces = "application/json;charset=utf8",method = RequestMethod.POST)
	public String replyInsert() {
		System.out.println("dd");
		  String aa = cm.bestajax();
		  System.out.println("cm="+cm.bestajax());
		  System.out.println("aList="+aa);
		  System.out.println("이거는??????");
		return aa;	
	} 
	@RequestMapping(value = "/newajax", produces = "application/json;charset=utf8",method = RequestMethod.POST)
	public String replyInsert1() {
		System.out.println("dd");
		String aa = cm.newajax();
		System.out.println("cm="+cm.newajax());
		System.out.println("aList="+aa);
		System.out.println("이거는??????");
		return aa;	
	} 
	@RequestMapping(value = "/imgajax", produces = "application/json;charset=utf8",method = RequestMethod.POST)
	public String imgInsert() {
		System.out.println("dd");
		String aa = cm.imgajax();
		System.out.println("cm="+cm.imgajax());
		System.out.println("aList="+aa);
		System.out.println("이거는??????");
		return aa;	
	} 
	@RequestMapping(value = "/mem", produces = "application/json;charset=utf-8", method = { RequestMethod.GET, RequestMethod.POST })
	public String mem() {
     System.out.println("여기는 와야 정상인디... 아!! 메소드 방시 적어야 된다...ㅠㅠ");
		String ab = mm.mem();
	
		return ab;

	}
	
}

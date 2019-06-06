package com.designus.www;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.bean.Auction;
import com.designus.www.service.CommonMM;
import com.designus.www.service.MemberMM;

@RestController
public class AjaxHomeControllerjy {

	@Autowired
	private CommonMM cm;
	private MemberMM mm;

	ModelAndView mav;

	/*
	 * @RequestMapping(value = "/bestajax", produces =
	 * "application/json;charset=utf8", method = RequestMethod.POST) public String
	 * replyInsert() { System.out.println("dd"); String aa = cm.bestajax();
	 * System.out.println("cm=" + cm.bestajax()); System.out.println("aList=" + aa);
	 * System.out.println("이거는??????"); return aa; }
	 * 
	 * @RequestMapping(value = "/newajax", produces =
	 * "application/json;charset=utf8", method = RequestMethod.POST) public String
	 * replyInsert1() { System.out.println("dd"); String aa = cm.newajax();
	 * System.out.println("cm=" + cm.newajax()); System.out.println("aList=" + aa);
	 * System.out.println("이거는??????"); return aa; }
	 * 
	 * @RequestMapping(value = "/imgajax", produces =
	 * "application/json;charset=utf8", method = RequestMethod.POST) public String
	 * imgInsert() { System.out.println("dd"); String aa = cm.imgajax();
	 * System.out.println("cm=" + cm.imgajax()); System.out.println("aList=" + aa);
	 * System.out.println("이거는??????"); return aa; }
	 */

	@RequestMapping(value = "/memberidfind", method = RequestMethod.POST)
	public String memberidfind() {
		System.out.println("아이디 찾기");
		String ab = mm.memberidfind();

		System.out.println("email");
		return ab;

	}

}

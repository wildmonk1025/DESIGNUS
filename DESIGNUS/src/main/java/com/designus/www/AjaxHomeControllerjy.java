package com.designus.www;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.bean.Auction;
import com.designus.www.bean.Member;
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

	/*
	 * @RequestMapping(value = "/memberidfind", produces =
	 * "application/json;charset=utf-8") public String memberidfind(@RequestBody
	 * String email, String name, HttpServletResponse response) {
	 * 
	 * String ab = mm.memberidfind(); System.out.println("아이디 찾기");
	 * 
	 * System.out.println(email); System.out.println(name);
	 * 
	 * System.out.println("email"); return ab;
	 * 
	 * }
	 */

}

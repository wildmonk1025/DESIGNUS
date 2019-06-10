package com.designus.www;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.designus.www.bean.Basket;
import com.designus.www.bean.Major;
import com.designus.www.service.MypageMM;

@RestController
public class AjaxMypageController {
	@Autowired
	private MypageMM pm;

	@RequestMapping(value = "/goods", method = { RequestMethod.GET, RequestMethod.POST })

	public boolean lbrev(String idw) {
		System.out.println("여기로 와라 제발...");
		System.out.println("이게 작가 아이디인데....=" + idw);
		boolean a = pm.goods(idw);
		return a;

	}
	@RequestMapping(value = "/sends", method = { RequestMethod.GET, RequestMethod.POST },produces="application/json;charset=utf8")

	public String sends(@RequestParam int ptnum) {
		System.out.println("여기로 와라 제발111...");
		System.out.println("이게 작가 아이디인데1111....=" + ptnum);
		String json = pm.sends(ptnum);
		return json;

	}

	
	/*
	 * @RequestMapping(value =
	 * "/ajax/lbspon",produces="application/json;charset=utf8")
	 * 
	 * public Map<String, Object> lbspon(Integer pageNum ,String kind) {
	 * System.out.println("여기로 와라 제발...ㅜㅜ"); Map<String,
	 * Object>sMap=pm.lbspon(pageNum,kind); return sMap; }
	 */

}

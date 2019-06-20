package com.designus.www;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.bean.RevAuctionTender;
import com.designus.www.bean.Sponsor;
import com.designus.www.bean.SponsorTender;
import com.designus.www.bean.revAuctionProgress;
import com.designus.www.service.AuctionMM;
import com.designus.www.service.RevAuctionMM;
import com.designus.www.service.SponsorMM;
import com.google.gson.Gson;

@RestController
/* @RequestMapping(value = "/ajax") */
public class AjaxSponnController {
	/*
	 * @RequestMapping() public String norJoinFrm() { return "norjoinFrm"; }
	 */
	ModelAndView mav;
	@Autowired
	private AuctionMM aum;
	@Autowired
	private RevAuctionMM ram;
	@Autowired
	SponsorMM spm;

	@RequestMapping(value = "/productinfo", produces = "application/json;charset=utf8", method = { RequestMethod.POST,
			RequestMethod.GET })
	public String productinfo() {

		System.out.println("후원정보 불러오기");

		String ajaxsponsor = spm.productinfo();
		System.out.println(spm.productinfo());
		return ajaxsponsor;
	}

	@RequestMapping(value = "/sponbuy", produces = "application/json;charset=utf8", method = { RequestMethod.POST,
			RequestMethod.GET })
	public String sponbuy(@RequestBody Sponsor ss) {
		System.out.println("도착했음!!");
		// int num = ss.getSs_num()
		String json = spm.sponbuy(ss);
		System.out.println("ssnum=" + ss.getSs_num());
		// System.out.println("ss_num=" + ss_num);
		// String ajaxsponsor = spm.productinfo();

		return json;
	}

}

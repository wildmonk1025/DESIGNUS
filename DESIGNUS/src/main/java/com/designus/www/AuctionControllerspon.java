package com.designus.www;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.bean.Sponsor;
import com.designus.www.service.SponsorMM;

@Controller
public class AuctionControllerspon {

	ModelAndView mav;

	@Autowired
	private HttpSession session;

	@Autowired
	SponsorMM sm;

	@RequestMapping(value = "/sponregistration", method = RequestMethod.GET)
	public String sponRegistrationFrm() {

		return "sponRegistrationFrm";
	}

	@RequestMapping(value = "/sponupload")
	public ModelAndView auctionWrite(MultipartHttpServletRequest multi) {
		mav = new ModelAndView();
		System.out.println("(컨트롤러) 스폰 상품 등록 시작");
		mav = sm.sponupload(multi);
		System.out.println("(컨트롤러) 스폰 상품 등록 마무리");
		return mav;
	}

	@RequestMapping(value = "/sponsor", method = RequestMethod.GET)
	public String sponsor() {

		return "sponsor";
	}

	@RequestMapping(value = "/sponproduct", method = RequestMethod.GET)
	public ModelAndView sponProductFrm(int ss_num) {

		mav = new ModelAndView();
		mav = sm.sponproduct(ss_num);
		System.out.println(sm.sponproduct(ss_num));

		return mav;
	}

	@RequestMapping(value = "/sponbuy", method = RequestMethod.GET)
	public ModelAndView sponbuy(int ss_num, String ss_mbid) {

		System.out.println("되고있나");
		mav = new ModelAndView();
		mav = sm.sponbuy(ss_num, ss_mbid);
		System.out.println(sm.sponbuy(ss_num, ss_mbid));

		return mav;
	}
}

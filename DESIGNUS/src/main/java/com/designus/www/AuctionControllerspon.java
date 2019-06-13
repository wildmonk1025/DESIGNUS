package com.designus.www;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.service.SponsorMM;

@Controller
public class AuctionControllerspon {

	ModelAndView mav;
	SponsorMM spm;

	@RequestMapping(value = "/sponregistration", method = RequestMethod.GET)
	public String sponRegistrationFrm() {

		return "sponRegistrationFrm";
	}

	@RequestMapping(value = "/sponupload")
	public ModelAndView auctionWrite(MultipartHttpServletRequest multi) {
		mav = new ModelAndView();
		System.out.println("넘어가나?");
		mav = spm.sponupload(multi);
		return mav;
	}

	@RequestMapping(value = "/sponsor", method = RequestMethod.GET)
	public String sponsor() {

		return "sponsor";
	}
}

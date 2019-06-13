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

	SponsorMM sm;

	@RequestMapping(value = "/sponregistration", method = RequestMethod.GET)
	public String sponRegistrationFrm() {

		return "sponRegistrationFrm";
	}

	@RequestMapping(value = "/sponupload")
	public ModelAndView auctionWrite(MultipartHttpServletRequest multi) {
		mav = new ModelAndView();
		System.out.println("넘어가나?");
		String id = (String) session.getAttribute("id");
		String sstitle = multi.getParameter("ss_title");
		int ssprice = Integer.parseInt(multi.getParameter("ss_price"));
		int ssqty = Integer.parseInt(multi.getParameter("ss_goalqty"));
		String scontents = multi.getParameter("ss_contents");
		System.out.println("id=" + id);
		System.out.println("title=" + sstitle);
		Sponsor ss = new Sponsor();
		ss.setSs_mbid_w(id);
		ss.setSs_contents(scontents);
		ss.setSs_goalqty(ssqty);
		ss.setSs_title(sstitle);
		ss.setSs_price(ssprice);
		mav = sm.sponupload(multi, ss);
		return mav;
	}

	@RequestMapping(value = "/sponsor", method = RequestMethod.GET)
	public String sponsor() {

		return "sponsor";
	}
}

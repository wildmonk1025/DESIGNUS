package com.designus.www;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.bean.Member;
import com.designus.www.service.MemberMM;
import com.designus.www.service.MypageMM;

@Controller
public class MypageController {
	@Autowired
	private MypageMM pm;
	@Autowired
	HttpSession session;
	ModelAndView mav;

	@RequestMapping(value = "/historylist", method = RequestMethod.GET)
	public ModelAndView historylist(String list) {
		System.out.println("ddd=" + list);
		mav = pm.historylist(list);
		System.out.println("view=" + mav.getViewName());
		return mav;
	}

	@RequestMapping(value = "/privacyedit", method = RequestMethod.GET)
	public ModelAndView privacyedit() {

		mav = pm.privacyedit();

		return mav;
	}

	@RequestMapping(value = "/memberout", method = RequestMethod.GET)
	public ModelAndView memberout() {

		mav = pm.memberout();

		return mav;
	}

	@RequestMapping(value = "/nortowri", method = RequestMethod.GET)
	public ModelAndView nortowri() {

		mav = pm.nortowri();

		return mav;
	}

	@RequestMapping(value = "/memberrevise", method = RequestMethod.POST)
	public ModelAndView memberrevise(MultipartHttpServletRequest multi, String kind) {
		mav = new ModelAndView();
		System.out.println("id=" + multi.getParameter("mb_pw"));
		System.out.println("address=" + multi.getParameter("mb_address"));
		mav = pm.memberrevise(multi, kind);
		mav.setViewName("memberEdit");
		return mav;
	}

	@RequestMapping(value = "/withdrawalconfirm", method = RequestMethod.POST)
	public ModelAndView withdrawalconfirm(Member mb) {
		mav = new ModelAndView();
		mav = pm.withdrawalconfirm(mb);
		return mav;
	}

	@RequestMapping(value = "/nortowriapply", method = RequestMethod.POST)

	public ModelAndView nortowriapply(MultipartHttpServletRequest multi) {
		System.out.println("r_bnum" + multi.getParameter("mj_cg_code"));
		System.out.println("r_contents" + multi.getParameter("mj_contents"));
		mav = new ModelAndView();
		mav = pm.nortowriapply(multi);
		return mav;
	}

	@RequestMapping(value = "/basketFrm", method = RequestMethod.GET)

	public ModelAndView basketFrm(Integer pageNum ,String kind) {
		System.out.println("여기로 와야 하는데....");
		System.out.println("카인드 뭐야??"+kind);
		mav = new ModelAndView();
		 mav=pm.basketFrm(pageNum,kind);
		return mav;
	}

}
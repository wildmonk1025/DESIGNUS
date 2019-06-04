package com.designus.www;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.bean.Member;
import com.designus.www.service.MemberMM;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired
	private MemberMM mm;
	@Autowired
	HttpSession session;
	ModelAndView mav;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);
		return "home";
	}

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home() {
		return "home";
	}

	@RequestMapping(value = "/logingo", method = RequestMethod.GET)
	public String logingo() {

		return "loginBox";
	}

	@RequestMapping(value = "/servicecenter", method = RequestMethod.GET)
	public String servicecenter() {

		return "sc_Question";
	}

	@RequestMapping(value = "/bestwriter", method = RequestMethod.GET)
	public String bestwriter() {

		return "popularWriterFrm";
	}

	@RequestMapping(value = "/norJoinFrm", method = RequestMethod.GET)
	public String norJoinFrm() {

		return "norjoinFrm";
	}

	@RequestMapping(value = "/wriJoinFrm", method = RequestMethod.GET)
	public String wriJoinFrm() {

		return "wrijoinFrm";
	}

	@RequestMapping(value = "/memberfind", method = RequestMethod.GET)
	public String memberfind() {

		return "memberFind";
	}

	@RequestMapping(value = "/joinfrm", method = RequestMethod.GET)
	public String joinfrm() {

		return "joinFrm";
	}

	@RequestMapping(value = "/memberapply", method = RequestMethod.POST)
	public ModelAndView memberapply(MultipartHttpServletRequest multi, String kind) {
		System.out.println("여기까지는 온것 같고..." + multi.getFileNames());
		mav = new ModelAndView();

		mav = mm.memberapply(multi, kind);
		return mav;
	}

	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public String mypage() {

		return "myPage";
	}

	@RequestMapping(value = "/access", method = RequestMethod.POST)
	public ModelAndView access(Member mb) {
		mav = mm.memberAccess(mb);

		return mav;
	}

	@RequestMapping(value="/login",method=RequestMethod.GET)
     public String login() {

 		return "loginBox";
 	}

	/*
	 * @RequestMapping(value="/joinPost",method=RequestMethod.GET) public String
	 * joinPost(@ModelAttribute("uVO") UserVO uVO) throws Exception) { //이메일 발송 관련
	 * url return "loginBox"; }
	 */
     
}

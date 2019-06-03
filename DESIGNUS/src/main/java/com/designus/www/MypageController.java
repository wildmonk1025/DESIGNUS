package com.designus.www;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

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
		mav = new ModelAndView();
         mav= pm.historylist(list);
		return mav;
	}

}

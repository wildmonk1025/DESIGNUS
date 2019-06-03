package com.designus.www.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.bean.Member;
import com.designus.www.dao.ImemberDao;
import com.designus.www.userClass.UploadFile;

@Service
public class MemberMM {
	@Autowired
	private ImemberDao mDao;
	@Autowired
	private HttpSession session;
	private ModelAndView mav;
	@Autowired
	private UploadFile upload;
	Member mb;
	public ModelAndView memberapply(MultipartHttpServletRequest multi) {

		mav = new ModelAndView();
		String view = null;
		int check = Integer.parseInt(multi.getParameter("fileCheck"));
		String mb_id = multi.getParameter("mb_id");
		String mb_pw = multi.getParameter("mb_pw");
		String mb_name = multi.getParameter("mb_name");
		String mb_birth = multi.getParameter("mb_birth");
		String mb_address = multi.getParameter("mb_address");
		String mb_email = multi.getParameter("mb_email");

		
		

		BCryptPasswordEncoder pwdEncoder = new BCryptPasswordEncoder();
		 mb.setMb_pw(pwdEncoder.encode(mb_pw));
		
		boolean f = upload.fileUp(multi,mb);
		if (f) {
			view = "loginBox";
			mav.addObject("check", 1);
		} else {
			view = "norjoinFrm";
		}
		mav.setViewName(view);

		return mav;
	}

}

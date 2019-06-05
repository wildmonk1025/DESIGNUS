package com.designus.www.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.bean.Major;
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
	private com.designus.www.userClass.UploadFile upload;

	public ModelAndView wriapply(MultipartHttpServletRequest multi, String kind) {
		System.out.println("작가 회원가입");
		mav = new ModelAndView();
		kind = "S";
		String view = null;
		int check = Integer.parseInt(multi.getParameter("fileCheck"));
		String id = multi.getParameter("mb_id");
		String pw = multi.getParameter("mb_pw");
		String name = multi.getParameter("mb_name");
		String birth = multi.getParameter("mb_birth");
		String address = multi.getParameter("mb_address");
		String email = multi.getParameter("mb_email");
		String wriid = multi.getParameter("mj_id");
		int wricate = Integer.parseInt(multi.getParameter("mj_cg_code"));
		String wriport = multi.getParameter("mj_portf");
		String wricon = multi.getParameter("mj_contents");
		int wriLike = Integer.parseInt(multi.getParameter("mj_like"));

		Member mb = new Member();
		mb.setMb_id(id);
		mb.setMb_birth(birth);
		mb.setMb_name(name);
		mb.setMb_address(address);
		mb.setMb_email(email);
		BCryptPasswordEncoder pwdEncoder = new BCryptPasswordEncoder();
		mb.setMb_pw(pwdEncoder.encode(pw));// 암호화

		Major mj = new Major();
		mj.setMj_id(wriid);
		mj.setMj_portf(wriport);
		mj.setMj_cg_code(wricate);
		mj.setMj_contents(wricon);
		mj.setMj_like(wriLike);

		boolean f = false;
		if (check == 1 && check == 4) { // 첨부된 파일이 있다면....
			// upload=new UploadFile(); //프로토타입
			// 이클립스 서버에 파일을 업로드 한 후,
			// 오리지널 파일명,시스텀 파일명을 리턴 후 맵에 저장
			f = upload.fileUp(multi, mb, kind, mj);
			if (f) {
				System.out.println("작가회원 신청");
				view = "loginBox";
			} else {
				System.out.println("인설트 안 됐대용");
				view = "wrijoinFrm";
			}
		} else {
			System.out.println("포트폴리오 썼니");
			view = "wrijoinFrm";
		}
		System.out.println(view);
		mav.setViewName(view);
		return mav;
	}

	public ModelAndView memberapply(MultipartHttpServletRequest multi, String kind) {
		System.out.println("여기까지는 온것 같고2...");
		mav = new ModelAndView();
		kind = "A";
		String view = null;
		int check = Integer.parseInt(multi.getParameter("fileCheck"));
		String id = multi.getParameter("mb_id");
		String pw = multi.getParameter("mb_pw");
		String name = multi.getParameter("mb_name");
		String birth = multi.getParameter("mb_birth");
		String address = multi.getParameter("mb_address");
		String email = multi.getParameter("mb_email");

		Member mb = new Member();
		mb.setMb_id(id);
		mb.setMb_birth(birth);
		mb.setMb_name(name);
		mb.setMb_address(address);
		mb.setMb_email(email);
		BCryptPasswordEncoder pwdEncoder = new BCryptPasswordEncoder();
		mb.setMb_pw(pwdEncoder.encode(pw));
		
		boolean f = false;
		
		if (check == 1) { // 첨부된 파일이 있다면....
			// upload=new UploadFile(); //프로토타입
			// 이클립스 서버에 파일을 업로드 한 후,
			// 오리지널 파일명,시스텀 파일명을 리턴 후 맵에 저장
			f = upload.fileUp(multi, mb, kind);
			if (f) {
				System.out.println("일단 여기까지는 된건데....");
				view = "loginBox";
			} else {
				System.out.println("인설트 실패인데....");
				view = "norjoinFrm";
			}
		} else {
			System.out.println("파일이 없다는건데....");
			view = "norjoinFrm";
		}
		System.out.println(view);
		mav.setViewName(view);
		return mav;
	}

	public ModelAndView login(Member mb) {

		mav = new ModelAndView();
		String view = null;

		BCryptPasswordEncoder pwdEncoder = new BCryptPasswordEncoder();

		String pwdEncode = mDao.getSecurityPwd(mb.getMb_id());

		if (pwdEncode != null) {
			if (pwdEncoder.matches(mb.getMb_pw(), pwdEncode)) {
				session.setAttribute("id", mb.getMb_id());
				session.setAttribute("grade", mb.getMb_grade());
				mb = mDao.getMemberInfo(mb.getMb_id());
				/* session.setAttribute("mb", mb); */
				System.out.println("grede=" + mb.getMb_grade());
				System.out.println("id=" + mb.getMb_id());
				view = "redirect:home";
			} else {
				view = "loginBox";
				mav.addObject("ckeck", 2);
			}
		} else {
			view = "loginBox";
			mav.addObject("ckeck", 2);
		}
		mav.setViewName(view);
		return mav;
	}

}

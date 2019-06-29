package com.designus.www.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.bean.Auction;
import com.designus.www.bean.Major;
import com.designus.www.bean.Member;
import com.designus.www.dao.ImemberDao;
import com.designus.www.dao.ImypageDao;
import com.designus.www.userClass.UploadFile;
import com.google.gson.Gson;

@Service
public class MemberMM {
	@Autowired
	private ImemberDao mDao;
	@Autowired
	private HttpSession session;
	@Autowired
	private ImypageDao pDao;

	ModelAndView mav;
	@Autowired
	private com.designus.www.userClass.UploadFile upload;

	@Transactional
	public ModelAndView wriapply(MultipartHttpServletRequest multi, String kind) {
		System.out.println("작가 회원가입");
		mav = new ModelAndView();
		kind = "S";
		String view = null;

		int check = Integer.parseInt(multi.getParameter("fileCheck"));
		int check2 = Integer.parseInt(multi.getParameter("fileCheck2"));
		String id = multi.getParameter("mb_id");
		String pw = multi.getParameter("mb_pw");
		String name = multi.getParameter("mb_name");
		String birth = multi.getParameter("mb_birth");
		String address = multi.getParameter("addr1") + multi.getParameter("addr2") + multi.getParameter("addr3");
		String email = multi.getParameter("mb_email");
		String wriid = multi.getParameter("mb_id");
		int wricate = Integer.parseInt(multi.getParameter("mj_cgcode"));
		String wriport = multi.getParameter("mj_portf");
		/* String wricon = multi.getParameter("mj_contents"); */
		/* int wriLike = Integer.parseInt(multi.getParameter("mj_like")); */

		Member mb = new Member();
		mb.setMb_id(id);
		mb.setMb_birth(birth);
		mb.setMb_name(name);
		mb.setMb_address(address);
		mb.setMb_email(email);
		BCryptPasswordEncoder pwdEncoder = new BCryptPasswordEncoder();
		mb.setMb_pw(pwdEncoder.encode(pw));// 암호화

		Major mj = new Major();
		mj.setMj_mbid(wriid);
		mj.setMj_cgcode(wricate);
		/* mj.setMj_contents(wricon); */
		/* mj.setMj_like(wriLike); */

		boolean f = false;
		if (check == 1 && check2 == 4) { // 첨부된 파일이 있다면....
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
		String address = multi.getParameter("addr1") + multi.getParameter("addr2") + multi.getParameter("addr3");
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
				mb.setMb_notify(id + " 님의 DISIGNUS 가입을 진심으로 감사합니다.");
				mDao.setNotifyAuctionApply(mb);
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

		Member d = mDao.getMemberclick(mb.getMb_id());

		mav.addObject("ccnt", d.getMb_ccnt());

		System.out.println("Asdasd" + d.getMb_ccnt());
		Member c = mDao.getMemclc(mb.getMb_id());
		if (c.getMb_grade().equals("S")) {
			System.out.println("경고횟수:" + c.getMb_grade());
			
			mav.addObject("msg6", "zzzz");
			view = "loginBox";
		}
		if (d.getMb_ccnt() >= 3) {

			System.out.println("경고횟수:" + d.getMb_ccnt());
			mav.addObject("msg1", "zzzz");
			view = "loginBox";
		} else {
			String pwdEncode = mDao.getSecurityPwd(mb.getMb_id());
			if (pwdEncode != null) {
				if (pwdEncoder.matches(mb.getMb_pw(), pwdEncode)) {

					mb = mDao.getMemberInfo(mb.getMb_id());
					session.setAttribute("id", mb.getMb_id());
					session.setAttribute("grade", mb.getMb_grade());
					/* session.setAttribute("mb", mb); */
					System.out.println("grede=" + mb.getMb_grade());
					System.out.println("id=" + mb.getMb_id());
					mav.addObject("msg", "ddd");
					view = "redirect:home";

				} else {
					view = "redirect:home";
				}
			} else {
				view = "redirect:home";
			}
			view = "redirect:home";
		}

		mav.setViewName(view);
		return mav;
	}

	public ModelAndView memberidfind(Member mb) {
		System.out.println("여기 안오고..?");
		mav = new ModelAndView();
		String view = null;
		mb = mDao.getMemberNameInfo(mb);
		if (mb != null) {
			mav.addObject("findid", "아이디는 " + mb.getMb_id() + "입니다.");
			System.out.println("id" + mb.getMb_id());
			view = "memberFind";
		} else {
			view = "memberFind";
			mav.addObject("findid", "입력하신 정보는 없는 정보입니다.");
		}
		mav.setViewName(view);
		return mav;
	}

	public ModelAndView memberpwfind(Member mb) {
		mav = new ModelAndView();
		String view = null;
		mb = mDao.getMemberpwInfo(mb);
		if (mb != null) {
			System.out.println("id" + mb.getMb_pw());
			System.out.println("ididididi::" + mb.getMb_id());
			mav.addObject("findpw1", "비밀번호 변경하기.");
			mav.addObject("mb", mb);
			view = "memberpwFind";
		} else {
			view = "memberpwFind";
			mav.addObject("findpw", "입력하신 정보는 없는 정보입니다.");
		}
		mav.setViewName(view);
		return mav;
	}

	public ModelAndView memberpwupdate(Member mb) {
		mav = new ModelAndView();
		String view = null;
		String id = mb.getMb_id();
		String pw = mb.getMb_pw();
		System.out.println("너 널이니?" + mb);
		mb.setMb_id(id);
		System.out.println(mb.getMb_pw());
		BCryptPasswordEncoder pwdEncoder = new BCryptPasswordEncoder();
		mb.setMb_pw(pwdEncoder.encode(pw));
		System.out.println(mb.getMb_pw());
		int check = mDao.getMemberPwUpdate(mb);
		System.out.println("넌뭐하는애니?" + check);

		if (check != 0) {
			System.out.println("여기오냐?");
			view = "loginBox";
		} else {
			view = "memberpwFind";
			System.out.println();
		}
		mav.setViewName(view);
		return mav;
	}

	public String getRamdomPassword(int len) {
		char[] charSet = new char[] { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F',

				'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z' };

		int idx = 0;

		StringBuffer sb = new StringBuffer();

		for (int i = 0; i < len; i++) {

			idx = (int) (charSet.length * Math.random()); // 36 * 생성된 난수를 Int로 추출 소숫점제거)

			System.out.println("idx ::::" + idx);

			sb.append(charSet[idx]);

		}

		return sb.toString();
	}

	public String mem() {
		System.out.println("여기와요??ㅎㅎ");
		String id = session.getAttribute("id").toString();

		System.out.println("여기는 올것 같은데...??ㅎㅎ");
		Member mb = pDao.mypagemoveSelect(id);
		System.out.println("과연 mb의 값은???" + mb);
		Gson gsonObj = new Gson();
		String jsonStr = gsonObj.toJson(mb);
		return jsonStr;
	}

}

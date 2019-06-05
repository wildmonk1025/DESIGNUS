package com.designus.www.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.bean.Major;
import com.designus.www.bean.Member;
import com.designus.www.dao.ImemberDao;
import com.designus.www.dao.ImypageDao;
import com.google.gson.Gson;

@Service
public class MypageMM {
	ModelAndView mav;
	@Autowired
	private ImypageDao pDao;
	@Autowired
	private HttpSession session;
	@Autowired
	private com.designus.www.userClass.UploadFile upload;

	public ModelAndView historylist(String list) {
		mav = new ModelAndView();
		String view = null;
		System.out.println("sddd:" + list);
		if (list.equals("rev")) {
			view = "revAuctionMyOrderList";
		} else if (list.equals("revre")) {
			view = "revAuctionMyAcceptList";
		} else if (list.equals("auc")) {
			view = "auctionMyOrderList";
		} else if (list.equals("aucre")) {
			view = "auctionMyAcceptList";
		} else if (list.equals("spon")) {
			view = "fundingAcceptList";
		} else if (list.equals("sponre")) {
			view = "fundingOrderList";
		} else {
			view = "basketFrm";
		}
		mav.setViewName(view);
		return mav;
	}

	public ModelAndView privacyedit() {
		mav = new ModelAndView();
		String view=null;
		String id = session.getAttribute("id").toString();
		Member mb = new Member();
		
		 mb=pDao.privacyeditSelect(id);
	 if(mb != null) {
		 mav.addObject("mb", mb);
		 view="memberEdit";
	 }else {
		 view="myPage";
	 }
	    
		mav.setViewName(view);
		return mav;
	}

	public ModelAndView memberout() {
		mav = new ModelAndView();
		 String id=session.getAttribute("id").toString();
		mav.addObject("id", id);
		mav.setViewName("memberDelete");
		return mav;
	}

	public ModelAndView nortowri() {
		mav = new ModelAndView();
		String id=session.getAttribute("id").toString();
		mav.addObject("id", id);
		mav.setViewName("memberTransform");
		return mav;
	}

	public ModelAndView memberrevise(MultipartHttpServletRequest multi, String kind) {
		mav = new ModelAndView();
		String view = null;
		kind="M";
		int check = Integer.parseInt(multi.getParameter("fileCheck"));
		String id = session.getAttribute("id").toString();
		String pw = (multi.getParameter("mb_pw"));
		String address = (multi.getParameter("mb_address"));
		String email = (multi.getParameter("mb_email"));
		String profile = multi.getParameter("mb_profile");
		System.out.println("id"+id);
		System.out.println("id"+pw);
		System.out.println("id"+address);
		System.out.println("id"+email);
		Member mb = new Member();
		BCryptPasswordEncoder pwdEncoder = new BCryptPasswordEncoder();
		mb.setMb_pw(pwdEncoder.encode(pw));
		mb.setMb_id(id);
		mb.setMb_address(address);
		mb.setMb_email(email);
		mb.setMb_profile(profile);
		boolean f = false;
		if (check == 1) { // 첨부된 파일이 있다면....
			// upload=new UploadFile(); //프로토타입
			// 이클립스 서버에 파일을 업로드 한 후,
			// 오리지널 파일명,시스텀 파일명을 리턴 후 맵에 저장
			f = upload.fileUp(multi, mb, kind);
			if (f) {
				System.out.println("일단 여기까지는 된건데....");
				view = "redirect:myPage";
			} else {
				System.out.println("인설트 실패인데....");
				view = "memberEdit";
			}
		} else {
			System.out.println("파일이 없다는건데....");
			view = "memberEdit";
		}
		System.out.println(view);
		mav.setViewName(view);

		return mav;
	}
	@Transactional
	public ModelAndView withdrawalconfirm(Member mb) {
		mav=new ModelAndView();
		
		String view=null;
		String id=session.getAttribute("id").toString();
		mb.setMb_id(id);
		BCryptPasswordEncoder pwdEncoder=new BCryptPasswordEncoder();
		System.out.println("idididi"+mb.getMb_id());
		String pwdEncode=pDao.withdrawalconfirmselect(mb.getMb_id());
		
		System.out.println("dddddddd"+ mb.getMb_pw());
		
		if(pwdEncode != null) {
			System.out.println("일단 아이디는 가져 왔고 된거고...");
			System.out.println("111111111"+pwdEncoder.matches(mb.getMb_pw(), pwdEncode));
			if(pwdEncoder.matches(mb.getMb_pw(), pwdEncode)) {
				System.out.println("일단 복호화는 된거고...");
				Member mmd=pDao.withdrawalconfirmselect2(mb.getMb_id());
		       if(pDao.withdrawalconfirmInsert(mmd)){
		    	   System.out.println("인설트까지는 된건데.....");
		    	   pDao.withdrawalconfirmDelete(mb);
		    	   session.invalidate();
		    	   view="home";
		       }else {
		    	   view="memberDelete";
		       }
			}else {
				System.out.println("이쪽으로 오는건가...??");
				
			}
		}
		mav.setViewName(view);
		return mav;
	}

	public boolean nortowriapply(MultipartHttpServletRequest multi) {
		String id=session.getAttribute("id").toString();
		int cate= Integer.parseInt(multi.getParameter("mj_cg_code"));
		String conten=multi.getParameter("mj_contents");
		int check = Integer.parseInt(multi.getParameter("fileCheck"));
		System.out.println("vvv"+check);
		Major mj=new Major();
		mj.setMj_id(id);
		mj.setMj_cg_code(cate);
		mj.setMj_contents(conten);
		
		
		return false;
	}
}

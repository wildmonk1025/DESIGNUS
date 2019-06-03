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
	private com.designus.www.userClass.UploadFile upload;
	public ModelAndView memberapply(MultipartHttpServletRequest multi) {
		 System.out.println("여기까지는 온것 같고2...");
		mav = new ModelAndView();
		String view = null;
		int check = Integer.parseInt(multi.getParameter("fileCheck"));
		
          Member mb=new Member();
		
		 boolean f = false;
			if (check == 1) { // 첨부된 파일이 있다면....
				// upload=new UploadFile(); //프로토타입
				// 이클립스 서버에 파일을 업로드 한 후,
				// 오리지널 파일명,시스텀 파일명을 리턴 후 맵에 저장
				f = upload.fileUp(multi,mb);
				if (f) {
					System.out.println("일단 여기까지는 된건데....");
					view = "loginBox";
				}else {
					System.out.println("인설트 실패인데....");
					view = "norjoinFrm";
				}
			}else {
				System.out.println("파일이 없다는건데....");
				view = "norjoinFrm";
			}
			System.out.println(view);
			mav.setViewName(view);
		return mav;
	}
	public ModelAndView memberAccess(Member mb) {
		
		mav=new ModelAndView();
		String  view=null;
		
		BCryptPasswordEncoder pwdEncoder= new BCryptPasswordEncoder();
		
		String pwdEncode=mDao.getSecurityPwd(mb.getMb_id());
		
		if(pwdEncode!=null) {
			if(pwdEncoder.matches(mb.getMb_pw(), pwdEncode)) {
				session.setAttribute("id", mb.getMb_id());
				session.setAttribute("grade", mb.getMb_grade());
				mb=mDao.getMemberInfo(mb.getMb_id());
				/* session.setAttribute("mb", mb); */
				System.out.println("grede="+mb.getMb_grade());
				view="redirect:home";
			}else {
				view="logingo";
				mav.addObject("ckeck" ,2);
			}
		}else {
			view="logingo";
			mav.addObject("ckeck" ,2);
		}
		mav.setViewName(view);
		return mav;
	}

}

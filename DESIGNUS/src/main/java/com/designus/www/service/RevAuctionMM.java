package com.designus.www.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.bean.RevAuction;



public class RevAuctionMM {
	
	/*
	 * @Autowired private UploadFile upload;
	 */
	@Autowired
	HttpSession session;
	
	ModelAndView mav;
	
	public ModelAndView revAuctionSubmit(MultipartHttpServletRequest multi) {
		
		mav = new ModelAndView();
		String id = session.getAttribute("id").toString();
		String view = null;	
		
		String title = multi.getParameter("b_title");
		String contents = multi.getParameter("b_contents");
		int check = Integer.parseInt(multi.getParameter("fileCheck"));
		
		RevAuction ra = new RevAuction();
		/*
		 * ra.setB_title(title); ra.setB_contents(contents); ra.setB_mid(id); boolean b=
		 * bDao.raInsert(ra); //ra.setB_num(bDao.getraNum()); //raFile 등록을 위해 DB에서 글번호
		 * 가져옴 boolean f = false; if(check==1) { //UploadFile upload = new UploadFile();
		 * //프로토타입 //서버에 파일을 업로드 한 후, //오리지널 파일명, 시스템파일명을 리턴 후 맵에 저장 f =
		 * upload.fileUp(multi, ra.getB_num()); }
		 * 
		 * 
		 * if(b && f) { //글쓰기 성공 view = "redirect:boardList"; } else { view ="writeFrm";
		 * }
		 */
		 
		
		mav.setViewName(view);
		return mav;
	}

}

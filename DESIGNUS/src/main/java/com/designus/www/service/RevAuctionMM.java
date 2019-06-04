package com.designus.www.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.bean.RevAuction;
import com.designus.www.userClass.UploadFile;

@Service
public class RevAuctionMM {

	/*
	 * @Autowired private UploadFile upload;
	 */
	@Autowired
	HttpSession session;

	ModelAndView mav;

	public ModelAndView revAuctionSubmit(MultipartHttpServletRequest multi) {
		String view = null;
		mav = new ModelAndView();
		
		String ra_mbid = session.getAttribute("id").toString();
		String ra_title = multi.getParameter("ra_title");
		String ra_contents = multi.getParameter("ra_contents");
		int ra_cgcode = Integer.parseInt(multi.getParameter("ra_cgcode"));
		String ra_image = multi.getParameter("ra_image");
		String ra_file = multi.getParameter("ra_file");
		String ra_oc = multi.getParameter("ra_oc");
		
		System.out.println(ra_mbid);
		System.out.println(ra_title);
		System.out.println(ra_contents);
		System.out.println(ra_cgcode);
		System.out.println(ra_image);
		System.out.println(ra_file);
		System.out.println(ra_oc);
		
		if(ra_oc.equals("비공개")) {
			ra_oc="C";
		} else
			ra_oc="O";
			System.out.println("공개/비공개 여부를 확인해야합니다.");
			
		RevAuction ra = new RevAuction();

		ra.setRa_mbid(ra_mbid);
		ra.setRa_title(ra_title);
		ra.setRa_contents(ra_contents);
		ra.setRa_cgcode(ra_cgcode);
		ra.setRa_image(ra_image);
		ra.setRa_file(ra_file);
		ra.setRa_oc(ra_oc);
		
		//boolean b = bDao.raInsert(ra);
		//ra.setB_num(bDao.getraNum());
		//raFile 등록을 위해 DB에서 글번호가져옴
		boolean f = false;
		UploadFile upload = new UploadFile();
		f = upload.fileUp(multi);
			if (f) {
				//글쓰기 성공 view = "redirect:boardList";
				view = "home";
			} else {
				view = "revauctionWrite";
			}
			mav.setViewName(view);
			return mav;
		}
	}

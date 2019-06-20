package com.designus.www.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.bean.Auction;
import com.designus.www.bean.Member;
import com.designus.www.bean.Report;
import com.designus.www.bean.Sponsor;
import com.designus.www.bean.SponsorProgress;
import com.designus.www.bean.SponsorTender;
import com.designus.www.bean.revAuctionProgress;
import com.designus.www.dao.IsponsorDao;
import com.designus.www.userClass.UploadFile;
import com.google.gson.Gson;

import lombok.Data;

@Service
public class SponsorMM {

	@Autowired
	private IsponsorDao sDao;
	@Autowired
	private HttpSession session;
	@Autowired
	private UploadFile upload;
	@Autowired
	HttpServletResponse response;

	Sponsor sp;
	Member mb;

	private ModelAndView mav;

	public ModelAndView sponupload(MultipartHttpServletRequest multi) {
		System.out.println("넘어와라ㅏ");

		mav = new ModelAndView();
		String view = null;
		int num = 10000;
		String id = (String) session.getAttribute("id");
		String sstitle = multi.getParameter("ss_title");
		int ssprice = Integer.parseInt(multi.getParameter("ss_price"));
		int ssqty = Integer.parseInt(multi.getParameter("ss_goalqty"));
		String scontents = multi.getParameter("ss_contents");
		int check = Integer.parseInt(multi.getParameter("fileCheck"));

		Sponsor sp = new Sponsor();
		sp.setSs_mbid_w(id);
		sp.setSs_title(sstitle);
		sp.setSs_price(ssprice);
		sp.setSs_goalqty(ssqty);
		sp.setSs_contents(scontents);

		sDao.sponuploadInsert(sp);
		num = sDao.getSponserwri(sp);

		sp.setSs_num(num);
		boolean f = false;
		if (check == 1) {
			f = upload.fileUpsponsor(multi, sp);
			view = "sponsor";
		}

		mav.setViewName(view);
		return mav;
	}

	public String productinfo() {
		System.out.println("후원리스트 불러오기");
		List<Sponsor> spList = sDao.productinfo();
		Gson gs = new Gson();
		String jsonObj = gs.toJson(spList);
		System.out.println(jsonObj);

		return jsonObj;
	}

	public ModelAndView sponproduct(int ss_num) {
		String view = null;
		mav = new ModelAndView();

		/*
		 * List<Sponsor> spList = sDao.productinfo(); Gson gs = new Gson(); String
		 * jsonObj = gs.toJson(spList); System.out.println(jsonObj);
		 */

		Sponsor sm = new Sponsor();
		// ss.setSs_num(ss_num);
		System.out.println("넘어오나용" + ss_num);
		sm = sDao.getSponcheck(ss_num);
		sm.setSs_num(ss_num);

		String time = sm.getSs_date();
		SimpleDateFormat fm = new SimpleDateFormat(time);
		String date = fm.format(new Date());
		System.out.println("시간을 불러왔나=" + date);

		if (ss_num == sm.getSs_num()) {
			System.out.println("여긴뭐지");
			mav.addObject("ss_num", sm.getSs_num());
			mav.addObject("ss_mbid_w", sm.getSs_mbid_w());
			mav.addObject("ss_title", sm.getSs_title());
			mav.addObject("ssi_ssi_imgSysName", sm.getSsi_imgSysName());
			mav.addObject("ss_contents", sm.getSs_contents());
			mav.addObject("ss_price", sm.getSs_price());
			mav.addObject("ss_goalqty", sm.getSs_goalqty());
			mav.addObject("ss_date", sm.getSs_date());
			mav.addObject("ss_date2", date);
			view = "sponProductFrm";
		} else {
			view = "sponsor";
		}
		mav.setViewName(view);
		return mav;
	}

	public ModelAndView sponbuy(int ss_num, String ss_mbid) {
		System.out.println("자 서비스 클래스 시작해보자~~~");
		SponsorTender st = new SponsorTender();
		mav = new ModelAndView();

		System.out.println("후원 밀어주기??");
		String view = null;

		String id = (String) session.getAttribute("id");
		String grade = (String) session.getAttribute("grade");

		st.setSst_ssnum(ss_num);
		st.setSst_mbid(id);

		System.out.println("회원등급=" + grade);
		System.out.println("넘버=" + ss_num);

		// 포인트 있을때만 밀어주기 가능하게 바꿔야함

		boolean f = sDao.sponTenderInsert(st);
		System.out.println("밀어주기 insert");
		// 밀어주기 insert
		if (f == true) {
			sDao.sponbuy(st);
			System.out.println("거래내역 insert");
			// 후원 거래내역 insert
//			response.setContentType("text/html; charset=UTF-8");
//			PrintWriter out = response.getWriter();
//			out.println("<script>alert('해당 작품을 밀어주었습니다!');</script>");
//			out.flush();
			/* mav.addObject("msg", "밀어주기 성공."); */
			view = "redirect:/sponproduct?ss_num=" + ss_num;
		} else {
			System.out.println("insert 실패");
			view = "/sponsor";
		}
		mav.setViewName(view);
		return mav;

	}
}

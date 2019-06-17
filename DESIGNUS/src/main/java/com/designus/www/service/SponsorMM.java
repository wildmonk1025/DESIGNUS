package com.designus.www.service;

import java.util.List;

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
			view = "sponProductFrm";
		} else {
			view = "sponsor";
		}
		mav.setViewName(view);
		return mav;
	}

	public ModelAndView sponbuy(int ss_num, String ss_mbid) {

		Sponsor sm = new Sponsor();
		Member mb = new Member();

		System.out.println("후원 밀어주기??");
		String view = null;

		sm.setSs_num(ss_num);
		String id = (String) session.getAttribute("id");
		String grade = (String) session.getAttribute("grade");

		System.out.println("회원등급=" + grade);
		SponsorTender st = new SponsorTender();

		st.setSst_mbid(id);
		st.setSst_ssnum(ss_num);

		// 포인트 있을때만 밀어주기 가능하게 바꿔야함
		sDao.sponTenderInsert(st);
		// 밀어주기 insert
		sDao.sponbuy(st);
		// 후원 거래내역 insert
		view = "sponsor";

		System.out.println(ss_num);
		System.out.println(id);

		mav.setViewName(view);
		return mav;
	}
}

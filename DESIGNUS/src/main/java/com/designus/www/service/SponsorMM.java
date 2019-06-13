package com.designus.www.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.bean.Auction;
import com.designus.www.bean.Sponsor;
import com.designus.www.dao.IsponsorDao;
import com.designus.www.userClass.UploadFile;

import lombok.Data;

public class SponsorMM {

	@Autowired
	private IsponsorDao sDao;
	@Autowired
	private HttpSession session;
	@Autowired
	private UploadFile upload;

	private ModelAndView mav;

	public ModelAndView sponupload(MultipartHttpServletRequest multi) {
		System.out.println("넘어와라ㅏ");
		mav = new ModelAndView();
		String view = null;

		String id = (String) session.getAttribute("id");
		int num = 10000;
		String sstitle = multi.getParameter("ss_title");
		int ssprice = Integer.parseInt(multi.getParameter("ss_price"));
		int ssqty = Integer.parseInt(multi.getParameter("ss_goalqty"));
		String scontents = multi.getParameter("ss_contents");

		Sponsor sp = new Sponsor();

		sp.setSs_mbid_w(id);
		sp.setSs_title(sstitle);
		sp.setSs_price(ssprice);
		sp.setSs_goalqty(ssqty);
		sp.setSs_contents(scontents);

		System.out.println("id=" + id);
		System.out.println("title=" + sstitle);
		System.out.println("ssprice=" + ssprice);
		System.out.println("ssqty=" + ssqty);
		System.out.println("scontents=" + scontents);

		num = sDao.getSponserwri(sp);

		sp.setSs_num(num);
		if (sDao.getSponserwriterinsert(sp)) {
			num = sDao.getSponserwri(sp);
			sp.setSs_num(num);
			upload.fileUpsponsor(multi, sp);
			mav.addObject("ss_num", num);
			view = "redirect:/sponsor";
			System.out.println("num=" + num);
		} else {
			view = "sponregistration";
		}

		mav.setViewName(view);
		return mav;
	}

}

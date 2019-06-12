package com.designus.www.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.bean.Sponsor;
import com.designus.www.dao.IauctionDao;
import com.designus.www.dao.IsponsorDao;
import com.designus.www.userClass.UploadFile;

public class SponsorMM {

	@Autowired
	private IsponsorDao sDao;
	@Autowired
	private HttpSession session;
	@Autowired
	private UploadFile upload;

	private ModelAndView mav;

	public ModelAndView sponupload(MultipartHttpServletRequest multi) {
		mav = new ModelAndView();

		String id = (String) session.getAttribute("id");
		int num = 10000;
		String title = multi.getParameter("ss_title");
		int ssprice = Integer.parseInt(multi.getParameter("ss_price"));
		int ssqty = Integer.parseInt(multi.getParameter("ss_goalqty"));
		String scontents = multi.getParameter("ss_contents");

		Sponsor sp = new Sponsor();
		sp.setSs_mbid_w(id);
		sp.setSs_title(title);
		sp.setSs_price(ssprice);
		sp.setSs_goalqty(ssqty);
		sp.setSs_contents(scontents);

		num = sDao.getSponserwri(sp);
		upload.fileUpsponsor(multi, sp);
		sp.setSs_num(num);
		System.out.println("num=" + num);

		sDao.getSponserwriterinsert(sp);

		mav.setViewName("sponsor");
		return mav;
	}

}

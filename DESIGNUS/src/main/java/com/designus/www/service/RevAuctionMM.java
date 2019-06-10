package com.designus.www.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.bean.Basket;
import com.designus.www.bean.RevAuction;
import com.designus.www.bean.RevAuctionTender;
import com.designus.www.dao.IRevAuctionDao;
import com.designus.www.userClass.UploadFile;
import com.google.gson.Gson;

@Service
public class RevAuctionMM {

	@Autowired
	HttpSession session;
	@Autowired
	private IRevAuctionDao rDao;
	@Autowired
	private UploadFile upload;

	ModelAndView mav;

	public ModelAndView revAuctionSubmit(MultipartHttpServletRequest multi) {
		String view = null;
		mav = new ModelAndView();

		String ra_mbid = session.getAttribute("id").toString();
		String ra_title = multi.getParameter("ra_title");
		String ra_contents = multi.getParameter("ra_contents");
		int ra_cgcode = Integer.parseInt(multi.getParameter("ra_cgcode"));
		String ra_oc = "O";

		//		if(ra_oc.equals("비공개")) {
		//			ra_oc="C";
		//		} else
		//			ra_oc="O";
		//			System.out.println("공개/비공개 여부를 확인해야합니다.");

		RevAuction ra = new RevAuction();
		ra.setRa_num(0);
		ra.setRa_mbid(ra_mbid);
		ra.setRa_title(ra_title);
		ra.setRa_contents(ra_contents);
		ra.setRa_cgcode(ra_cgcode);
		ra.setRa_oc(ra_oc);

		//boolean b = bDao.raInsert(ra);
		//ra.setB_num(bDao.getraNum());
		//raFile 등록을 위해 DB에서 글번호가져옴

		int currval = upload.fileUp(multi, ra);
		if (currval != 0) {
			//글쓰기 성공 view = "redirect:boardList";
			mav.addObject("ra_num", currval);
			view = "redirect:/revauctionread";
			///"+currval
		} else if (currval == 0) {
			view = "revAuctionWrite";
		}
		mav.setViewName(view);
		return mav;
	}

	public ModelAndView revAuctionRead(int ra_num) {
		mav = new ModelAndView();
		String view = null;
		String id = (String) session.getAttribute("id");
		int nb = 1;
		RevAuction ra = new RevAuction();
		Basket bk = new Basket();
		ra.setRa_num(ra_num);
		ra = rDao.revAuctionReadSelect(ra);
		bk.setRab_mbid(id);
		bk.setRab_ranum(ra_num);
		nb = rDao.getrevAuctionBasketSelect(bk);
		bk.setRab_ranum(nb);
		mav.addObject("nb", bk.getRab_ranum());
		mav.addObject("raInfo", ra);
		if (ra_num == ra.getRa_num()) {
			view = "revAuctionRead";
			mav.addObject("ra_num", ra_num);
		} else {
			mav.addObject("ra_num", "잘못된 접근입니다."); //ra_num과 일치하는 상세정보가 맞는지 확인
			view = "home";
		}
		mav.setViewName(view);
		return mav;
	}

	public int revbasketSelect(int num) {
		String id = (String) session.getAttribute("id");
		String view = null;
		Basket bk = new Basket();
		bk.setRab_ranum(num);
		bk.setRab_mbid(id);

		mav.addObject("num", num);

		int number = rDao.getrevAuctionBasketSelect(bk);

		if (number == 0) {
			rDao.getrevAuctionBasketInsert(bk);
			view = "auctionRead";
		}
		if (number > 0) {
			rDao.getrevAuctionBasketDelete(bk);
			view = "auctionRead";
		}
		return number;
	}

	public String revAuctionAjax(RevAuctionTender rat_ranum) {
		String jsonStr = null;
		List<RevAuctionTender> tList = rDao.revAuctionAjaxSelect(rat_ranum);
		System.out.println(tList.get(0));
		if (tList.size() != 0) {
			jsonStr = new Gson().toJson(tList);
		} else {
			jsonStr = new Gson().toJson(jsonStr);
			System.out.println("입찰내역이 없습니다.");
		}

		return jsonStr;
	}

	public void ratFileDownload(Map<String, Object> params) throws Exception {
		String root = (String) params.get("root");
		String rat_file = (String) params.get("rat_file");
		String fullPath = root + "/resources/upload/" + rat_file;
		System.out.println(fullPath);

		HttpServletResponse resp = (HttpServletResponse) params.get("response");

		//실제 다운로드
		upload.download(fullPath, rat_file, resp);
	}

	public void revAuctionApply(MultipartHttpServletRequest multi) {
		String rat_mbid_w = session.getAttribute("id").toString();
		int rat_days = Integer.parseInt(multi.getAttribute("revadate").toString());
		int rat_price = Integer.parseInt(multi.getAttribute("revamoney").toString());
		//int rat_num = Integer.parseInt(multi.get("ra_num").toString());

		System.out.println("확인1="+rat_days);
		System.out.println("확인2="+rat_price);
		//System.out.println("확인3="+rat_num);
		RevAuctionTender rat = new RevAuctionTender();
		//rat.setRat_ranum(rat_num);
		rat.setRat_mbid_w(rat_mbid_w);
		rat.setRat_days(rat_days);
		rat.setRat_price(rat_price);

		//String rat_file = upload.revTenderfileUp(file);
		//rat.setRat_file(rat_file);
		
		//boolean f = false;

		//f = rDao.revAuctionApplyInsert(rat);
	}
}

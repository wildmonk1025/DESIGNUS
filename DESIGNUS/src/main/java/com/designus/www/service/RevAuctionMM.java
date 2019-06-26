package com.designus.www.service;

import java.text.ParseException;
import java.util.HashMap;
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
import com.designus.www.bean.Category;
import com.designus.www.bean.Member;
import com.designus.www.bean.MemberSearch;
import com.designus.www.bean.RevAuction;
import com.designus.www.bean.RevAuctionTender;
import com.designus.www.bean.revAuctionProgress;
import com.designus.www.dao.IRevAuctionDao;
import com.designus.www.dao.IauctionDao;
import com.designus.www.dao.ImemberDao;
import com.designus.www.userClass.DateAdjust;
import com.designus.www.userClass.UploadFile;
import com.google.gson.Gson;
import com.google.gson.JsonElement;

@Service
public class RevAuctionMM {

	@Autowired
	HttpSession session;
	@Autowired
	private IauctionDao aDao;
	@Autowired
	private IRevAuctionDao rDao;
	@Autowired
	private ImemberDao mDao;
	@Autowired
	private UploadFile upload;

	ModelAndView mav;

	public ModelAndView revAuctionSubmit(MultipartHttpServletRequest multi) {
		String view = null;
		mav = new ModelAndView();
		
		String ra_mbid = session.getAttribute("id").toString();
		String ra_title = multi.getParameter("ra_title");
		String ra_contents = multi.getParameter("ra_contents");
		String ra_oc = "O";
		int ra_cgcode = Integer.parseInt(multi.getParameter("ra_cgcode"));
		
		if(!multi.getParameter("ra_mbid").isEmpty()) {
			ra_oc = "C";
		}

		RevAuction ra = new RevAuction();
		ra.setRa_mbid(ra_mbid);
		ra.setRa_title(ra_title);
		ra.setRa_contents(ra_contents);
		ra.setRa_cgcode(ra_cgcode);
		ra.setRa_oc(ra_oc);

		//boolean b = bDao.raInsert(ra);
		//ra.setB_num(bDao.getraNum());
		//raFile 등록을 위해 DB에서 글번호가져옴

		int currval = upload.fileUp(multi, ra);
		
		if(!multi.getParameter("ra_mbid").isEmpty()) {
			String rat_mbid_w = multi.getParameter("ra_mbid");
			int rat_price = Integer.parseInt(multi.getParameter("ra_price"));
			int rat_days = Integer.parseInt(multi.getParameter("ra_date"));
			RevAuctionTender rat = new RevAuctionTender();
			
			rat.setRat_ranum(currval);
			rat.setRat_mbid_w(rat_mbid_w);
			rat.setRat_price(rat_price);
			rat.setRat_days(rat_days);
			//비공개 의뢰일 경우, none으로 설정하기
			rat.setRat_file("none");
			
			boolean f = rDao.revAuctionApplyInsert(rat);
			
			if(f) {
				revAuctionProgress rap = new revAuctionProgress();
				rap.setRap_ranum(currval);
				rap.setRap_mbid_n(ra_mbid);
				rap.setRap_mbid_w(rat_mbid_w);
				rap.setRap_price(rat_price);
				rap.setRap_days(rat_days);
				rDao.reqDecisionInsert2(rap);
				rap.setRap_notify(ra_mbid+" 님이 비공개 제작의뢰 '" +ra_title+"'을(를) 신청 합니다." );
				rDao.setNotifyrevAuctionW(rap);
				rap.setRap_notify(rat_mbid_w+" 님에게 비공개 제작의뢰 '"+ra_title+"'을(를) 신청을 하였습니다. ");
				rDao.setNotifyrevAuctionN(rap);
				
			} else
				System.out.println("비공개가 rat테이블에 insert안됨");
		}
		
		if (currval != 0) {
			//글쓰기 성공 view = "redirect:boardList";
			mav.addObject("ra_num", currval);
			view = "redirect:/revauctionread";
		} else if (currval == 0) {
			view = "revAuctionWrite";
		}
		
		mav.setViewName(view);
		return mav;
	}


	public ModelAndView revAuctionRead(int ra_num) throws ParseException {
		mav = new ModelAndView();
		DateAdjust da = new DateAdjust();
		String view = null;
		String id = (String) session.getAttribute("id");
		String grade = (String) session.getAttribute("grade");
		List<Category> cgList = null;
		int nb = 1;
		String decidechk = null;
		RevAuction ra = new RevAuction();
		Member mb = new Member();
		Basket bk = new Basket();
		cgList = aDao.getcgCode();
		ra.setRa_num(ra_num);
		ra = rDao.revAuctionReadSelect(ra);
		
		//현재시간과 DB의 시간이 일치할 경우, 작가 의뢰 접수 불가능 하도록 구현
		boolean f = da.compareDateToBoolean(ra.getRa_date());
		if(!f) {
			decidechk = "HIDE";
		}

		//꿍 기능 Start
		bk.setRab_mbid(id);
		bk.setRab_ranum(ra_num);
		nb = rDao.getrevAuctionBasketSelect(bk);
		bk.setRab_ranum(nb);
		//꿍 기능 End

		List<RevAuctionTender> rat_decide = rDao.getDecideCheckSelect(ra);
		for (int i = 0; i < rat_decide.size(); i++) {
			System.out.println(rat_decide.get(i).getRat_decide());
			if (rat_decide.get(i).getRat_decide().equals("O") || ra.getRa_mbid().equals(id) || !grade.equals("W")) {
				decidechk = "HIDE";
			}
		}
		mav.addObject("cgList",cgList);
		mav.addObject("decidechk", decidechk);
		mav.addObject("nb", bk.getRab_ranum());
		mav.addObject("raInfo", ra);
		//회원이 낙찰한 금액 확인하기
		RevAuctionTender rat = rDao.myCurbaMountSelect(ra);
		mav.addObject("raCurPrice",rat);
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

	public ModelAndView ratFileDownload(Map<String, Object> params) throws Exception {
		mav = new ModelAndView();
		String root = (String) params.get("root");
		String rat_file = (String) params.get("rat_file");
		//파일 없을경우 넘길 글번호
		String fullPath = root + rat_file;
		System.out.println(fullPath);

		HttpServletResponse resp = (HttpServletResponse) params.get("response");
		//실제 다운로드
		boolean chk = upload.download(fullPath, rat_file, resp);
		if(chk==false) {
			int ra_num = Integer.parseInt(params.get("ra_num").toString());
			mav.addObject("ra_num", ra_num);
			mav.setViewName("redirect:/revauctionread");
		}
		return mav;
	}

	public String revAuctionApply(MultipartHttpServletRequest multi) {
		String tenderchk = null;
		String rat_mbid_w = session.getAttribute("id").toString();
		int rat_days = Integer.parseInt(multi.getParameter("revadate"));
		int rat_price = Integer.parseInt(multi.getParameter("revamoney"));
		int rat_num = Integer.parseInt(multi.getParameter("ra_num"));
		System.out.println("확인1=" + rat_days);
		System.out.println("확인2=" + rat_price);
		System.out.println("확인3=" + rat_num);

		RevAuctionTender rat = new RevAuctionTender();
		rat.setRat_ranum(rat_num);
		rat.setRat_mbid_w(rat_mbid_w);
		rat.setRat_days(rat_days);
		rat.setRat_price(rat_price);

		if (rat.getRat_mbid_w() != null && rat.getRat_price() != 0 && rat.getRat_days() != 0) {
			int check = rDao.revAuctionApplyDelete(rat);
			tenderchk = check + "개의 기존 입찰내역을 삭제하였습니다.\n";

			String rat_file = upload.revTenderfileUp(multi);
			rat.setRat_file(rat_file);

			System.out.println(rat.getRat_file());
			boolean f = rDao.revAuctionApplyInsert(rat);
			rat.setRat_mbid_n(rDao.selectNID(rat));
			rat.setRat_notify(rat.getRat_mbid_w()+" 님이  견적서를 등록하였습니다.");
			rDao.setNotifyrevAuctionApply(rat);
			
			if (f) {
				tenderchk += "의뢰 접수가 정상적으로 등록되었습니다.";
			} else {
				tenderchk += "의뢰 접수를 다시 진행해주시기 바랍니다.";
			}
			return tenderchk;
		} else {
			return "입력할 수 없습니다.";
		}
	}

	public int reqDecision(revAuctionProgress rap) throws ParseException {
		String id = session.getAttribute("id").toString();
		int msg = 0; //본인은 의뢰할 수 없습니다.
		//글 작성자를 임시로 rap_mbid_n에 담아와 세션의 "id"와 비교후, 동일하면 RAT_DECIDE를 "O"로 변경
		String revwriter = rap.getRap_mbid_n();
		//rap_mbid_n에 세션 "id"를 세팅
		rap.setRap_mbid_n(id);
		
		//제작의뢰 경매시간이 지나면, 의뢰하기가 불가능하도록 설정
		DateAdjust da = new DateAdjust();
		RevAuction ra = new RevAuction();
		ra.setRa_num(rap.getRap_ranum());
		ra = rDao.revAuctionReadSelect(ra);
		boolean f = da.compareDateToBoolean(ra.getRa_date());
		
		if(f) {
		if (!rap.getRap_mbid_w().equals(id)) {
			if (revwriter.equals(id)) {
				int flag1 = rDao.reqDecisionUpdate(rap);
				
				rap.setRap_notify(" 제작의뢰 접수가 완료 되었습니다. ");
				rDao.setNotifyrevAuctionPickN(rap);
				rap.setRap_notify(id+" 님의 작품의뢰 에 선택 되었습니다. ");
				rDao.setNotifyrevAuctionPickW(rap);
				
				
				msg = 1; //의뢰한 본인의 의뢰하기 완료
				System.out.println("flag1의 값=" + flag1);
				System.out.println("의뢰한 본인의 의뢰하기 완료. O로 변경");
			} else {
				msg = 2; //다른사람의 의뢰하기 완료
				System.out.println("다른사람의 의뢰하기 완료.");
			}

			int cnt = rDao.reqDecisionSelect(rap);
			System.out.println("cnt확인=" + cnt);
			if (cnt == 0) {
				rDao.reqDecisionInsert(rap);
				msg = 3; //의뢰접수 완료
			} else {
				msg = 4; //이미 의뢰한 접수내역이 존재합니다.
			}
		}
		} else if(!f) {
			msg = 5; //경매시간이 지나, 의뢰하기가 불가능
		}
		return msg;
	}

	public String wriList(MemberSearch mbs) {
		//if(mb.getMb_id().length()>0) 
		List<MemberSearch> mList = rDao.wriListSelect(mbs);
		for(int i=0;i<mList.size();i++) {
		System.out.println("mList"+i+"번째 ID:"+mList.get(i).getMb_id());
			}
			String str = new Gson().toJson(mList);
		return str;
	}


	public ModelAndView revauctionWrite() {
		mav = new ModelAndView();
		List<Category> cgList = null; 
		cgList = aDao.getcgCode();
		mav.addObject("cgList",cgList);
		mav.setViewName("revauctionWrite");
		return mav;
	}
}

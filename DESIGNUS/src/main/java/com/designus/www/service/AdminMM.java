package com.designus.www.service;

import java.util.HashMap;
import java.util.List; 
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.bean.Member;
import com.designus.www.bean.MemberSearch;
import com.designus.www.bean.Question;
import com.designus.www.bean.QuestionReply;
import com.designus.www.bean.Report;
import com.designus.www.dao.IadminDao;
import com.google.gson.Gson;

@Service
public class AdminMM {
	@Autowired
	private HttpSession session;

	private ModelAndView mav;
	@Autowired
	private IadminDao iDao;
	
	public String declarewritecheck() {
		List<MemberSearch> rList = iDao.getrepInfo();

		System.out.println("이거는되나");
		Gson gs = new Gson();
		String jsonObj = gs.toJson(rList);
		System.out.println(jsonObj);
		System.out.println("여기는??");
		return jsonObj;
	}

	public String Declarelist() {
		List<MemberSearch> rList = iDao.getrepInfo();

		System.out.println("이거는되나");
		Gson gs = new Gson();
		String jsonObj = gs.toJson(rList);
		System.out.println(jsonObj);
		System.out.println("여기는??");
		return jsonObj;
	}

	public String transformList() {
		List<MemberSearch> rList = iDao.gettransInfo();

		System.out.println("이거는되나");
		Gson gs = new Gson();
		String jsonObj = gs.toJson(rList);
		System.out.println(jsonObj);
		System.out.println("여기는??");
		return jsonObj;
	}

	public ModelAndView declareWriteCheck(int rp_num) {
		String view = null;
		mav = new ModelAndView();

		Report rp = new Report();
		// rp.setRp_num(rp_num);
		System.out.println("와?zz" + rp_num);

		rp = iDao.getWriteCheck(rp_num);
		rp.setRp_num(rp_num);
		if (rp_num == rp.getRp_num()) {
			System.out.println("여기와? ㅋㅋㅋㅋ");
			mav.addObject("rp_num", rp.getRp_num());
			mav.addObject("rp_mbid_d", rp.getRp_mbid_d());
			mav.addObject("rp_mbid_a", rp.getRp_mbid_a());
			mav.addObject("rp_locate", rp.getRp_locate());
			mav.addObject("rp_reason", rp.getRp_reason());
			mav.addObject("rp_title", rp.getRp_title());
			mav.addObject("rp_contents", rp.getRp_contents());
			mav.addObject("rp_img", rp.getRpi_img());
			mav.addObject("rp_date", rp.getRp_date());
			view = "declareWriteCheck";
		} else {
			view = "declareWrite";
		}
		mav.setViewName(view);
		return mav;
	}
	public ModelAndView permitWriDetail(String mb_id) {
		String view = null;
		mav = new ModelAndView();

		MemberSearch ms=new MemberSearch();
		// rp.setRp_num(rp_num);
		System.out.println("zzzzzzzz" + mb_id);

		ms = iDao.permitWriDetail(mb_id);
		ms.setMb_id(mb_id);
		if (mb_id == ms.getMb_id()) {
			System.out.println("ffffffff ㅋㅋㅋㅋ");
			mav.addObject("mb_id", ms.getMb_id());
			mav.addObject("mj_cgcode", ms.getMj_cgcode());
			mav.addObject("mj_contents", ms.getMj_contents());
			mav.addObject("mj_portf", ms.getMj_portf());
			view = "permitWriDetail";
		} else {
			view = "permitWriDetail";
		}
		mav.setViewName(view);
		return mav;
	}
	
	public ModelAndView declareNonPermit(int rp_num) {
		mav = new ModelAndView();
		String view = null;
		System.out.println("[1] rp_num =" + rp_num);
		System.out.println("오/..왔내?");
		boolean f2 = iDao.getPerfmit(rp_num);
		boolean f = iDao.getPermit(rp_num);
		System.out.println("와라진짜 ㅡㅡ 다른거좀하자");
		
		if(f && f2) {
			mav.addObject("rp_num", rp_num);
			view = "declareWrite";
		} else {
			System.out.println("삭제 실패");
			view = "home";
		}
		mav.setViewName(view);
		return mav;
	}

	public ModelAndView declarepermit(int rp_num,  String mb_id) {
		mav = new ModelAndView();
		String view = null;
		boolean f2 = iDao.getPerfmit(rp_num);
		boolean f = iDao.getPermit(rp_num);
		System.out.println(" rp_mbid_a"+mb_id);
		
		boolean k=iDao.getwarning(mb_id);
		System.out.println("와라진짜 ㅡㅡ 다른거좀하자");
		
		if(f && f2) {
			mav.addObject("rp_num", rp_num);
			view = "declareWrite";
		} else {
			System.out.println("삭제 실패");
			view = "home";
		}
		mav.setViewName(view);
		return mav;
	}

	public String transformwridetail() {
		List<MemberSearch> rList = iDao.gettransforInfo();

		System.out.println("이거는되나");
		Gson gs = new Gson();
		String jsonObj = gs.toJson(rList);
		System.out.println(jsonObj);
		System.out.println("여기는??");
		return jsonObj;
	}

	public ModelAndView tcommentandrefuse(String mb_id) {
		mav = new ModelAndView();
		String view = null;
		boolean k=iDao.getreAuthorfuse(mb_id);
		System.out.println("아이디와?"+mb_id);
		
		view = "permitWriApply";
		mav.setViewName(view);
		return mav;
	}

	public ModelAndView tcommentandapply(String mb_id) {
		mav = new ModelAndView();
		String view = null;
		System.out.println("ㅋㅋㅋㅋㅋ"+mb_id);
		boolean k=iDao.getreAuthoragree(mb_id);
		boolean n=iDao.getreAuthordelete(mb_id);
		System.out.println("ZZZZZZZ");
		System.out.println("아이디와?"+mb_id);
		
		view = "permitWriApply";
		mav.setViewName(view);
		return mav;
	}

	public String questionwritecheck() {
		List<Question> rList = iDao.getquestionInfo();
		System.out.println("이거는되나");
		Gson gs = new Gson();
		String jsonObj = gs.toJson(rList);
		System.out.println(jsonObj);
		System.out.println("여기는??");
		return jsonObj;
	}

	public ModelAndView questionWriteCheck(int aq_num) {
		mav = new ModelAndView();
		String view = null;
		Question n = new Question();
		System.out.println("여기까진 온다이거지?");
		n=iDao.getquestionCheck(aq_num);
		mav.addObject("aq_num", n.getAq_num());
		mav.addObject("aq_mbid", n.getAq_mbid());
		mav.addObject("aq_type", n.getAq_type());
		mav.addObject("aq_title", n.getAq_title());
		mav.addObject("aq_contents", n.getAq_contents());
		mav.addObject("aqi_img", n.getAqi_img());
		System.out.println("오....성공??");
		view = "questionWriteCheck";
		mav.setViewName(view);
		return mav;
	}

	public ModelAndView questionreply(int aq_num, String qr_contents ) {
		mav = new ModelAndView();
		String view = null;
		QuestionReply qr=new QuestionReply();
		System.out.println("일단여기까진오는거지?"+aq_num);
		System.out.println("일단여기까진오는거지?"+qr_contents);
		Map<String,Object> map= new HashMap<>();
		map.put("aq_num",aq_num);
		map.put("qr_contents",qr_contents);
		boolean a=iDao.getquestionReply(map);
		if(a) {
			
		}
		view = "questionList";
		mav.setViewName(view);
		return mav;
	}

	public String memberseclist() {
		List<Member> rList = iDao.getmemberList();
		System.out.println("이거는되나");
		Gson gs = new Gson();
		String jsonObj = gs.toJson(rList);
		System.out.println(jsonObj);
		System.out.println("여기는??");
		return jsonObj;
	}

	public String memberAuthorlist() {
		List<Member> rList = iDao.getmemberAuthorList();
		System.out.println("이거는되나");
		Gson gs = new Gson();
		String jsonObj = gs.toJson(rList);
		System.out.println(jsonObj);
		System.out.println("여기는??");
		return jsonObj;
	}

	public String memberBlacklist() {
		List<Member> rList = iDao.getmemberBlackList();
		System.out.println("이거는되나");
		Gson gs = new Gson();
		String jsonObj = gs.toJson(rList);
		System.out.println(jsonObj);
		System.out.println("여기는??");
		return jsonObj;
	}

	

}

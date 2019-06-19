package com.designus.www.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.bean.Category;
import com.designus.www.bean.Member;
import com.designus.www.bean.MemberSearch;
import com.designus.www.bean.Notify;
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

		Gson gs = new Gson();
		String jsonObj = gs.toJson(rList);
		System.out.println(jsonObj);
		return jsonObj;
	}

	public String Declarelist() {
		List<MemberSearch> rList = iDao.getrepInfo();

		Gson gs = new Gson();
		String jsonObj = gs.toJson(rList);
		System.out.println(jsonObj);
		return jsonObj;
	}

	public String transformList() {
		List<MemberSearch> rList = iDao.gettransInfo();

		Gson gs = new Gson();
		String jsonObj = gs.toJson(rList);
		System.out.println(jsonObj);
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

		MemberSearch ms = new MemberSearch();
		// rp.setRp_num(rp_num);

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
		
		Notify nf = new Notify();
		nf.setNf_num(rp_num);
		nf.setNf_mbid_r(iDao.getRpUserRSel(nf)); //신고자
		nf.setNf_mbid_s(iDao.getRpUserSSel(nf)); //신고당한 아이디
		nf.setNf_contents(iDao.getRpUserTSel(nf)); // 신고 제목
		nf.setNf_notify(nf.getNf_mbid_r() +" 님이 "+nf.getNf_mbid_s()+" 님에 대한 신고내용 "+nf.getNf_contents()+" 이(가) 신고 내용에 부적합 합니다");
		iDao.setNotifyDeclareNon(nf);
		
		boolean f2 = iDao.getPerfmit(rp_num);
		boolean f = iDao.getPermit(rp_num);
		
		if (f && f2) {
			mav.addObject("rp_num", rp_num);
			view = "declareWrite";
		} else {
			view = "home";
		}
		mav.setViewName(view);
		return mav;
	}

	public ModelAndView declarepermit(int rp_num, String mb_id) {
		mav = new ModelAndView();
		String view = null;
		
		Notify nf = new Notify();
		nf.setNf_num(rp_num);
		nf.setNf_mbid_r(iDao.getRpUserRSel(nf)); //신고자
		nf.setNf_mbid_s(iDao.getRpUserSSel(nf)); //신고당한 아이디
		nf.setNf_check(iDao.getRpUserCCNTSel(nf)); // 누적경고횟수
		nf.setNf_contents(iDao.getRpUserTSel(nf)); // 신고 제목
		nf.setNf_notify(nf.getNf_mbid_r() +" 님의 신고내용 "+nf.getNf_contents()+" 이(가) 신고에 적합 합니다 "+nf.getNf_mbid_s()+" 의 누적경고횟수는 "+nf.getNf_check()+" 회 입니다.");
		iDao.setNotifyDeclare(nf);
		nf.setNf_notify(nf.getNf_mbid_r() +" 님의 신고내용 "+nf.getNf_contents()+" 이(가) 신고에 적합 합니다 "+nf.getNf_mbid_s()+" 님에게 경고를 주어습니다.");
		iDao.setNotifyDeclareReply(nf);
		
		boolean f2 = iDao.getPerfmit(rp_num);
		boolean f = iDao.getPermit(rp_num);
		System.out.println(" rp_mbid_a" + mb_id);

		boolean k = iDao.getwarning(mb_id);

		if (f && f2) {
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

		Gson gs = new Gson();
		String jsonObj = gs.toJson(rList);
		System.out.println(jsonObj);
		return jsonObj;
	}

	public ModelAndView tcommentandrefuse(String mb_id) {
		mav = new ModelAndView();
		String view = null;
		boolean k = iDao.getreAuthorfuse(mb_id);

		view = "permitWriApply";
		mav.setViewName(view);
		return mav;
	}

	public ModelAndView tcommentandapply(String mb_id) {
		mav = new ModelAndView();
		String view = null;
		boolean k = iDao.getreAuthoragree(mb_id);
		boolean n = iDao.getreAuthordelete(mb_id);

		view = "permitWriApply";
		mav.setViewName(view);
		return mav;
	}

	public String questionwritecheck() {
		List<Question> rList = iDao.getquestionInfo();
		Gson gs = new Gson();
		String jsonObj = gs.toJson(rList);
		System.out.println(jsonObj);
		return jsonObj;
	}

	public ModelAndView questionWriteCheck(int aq_num) {
		mav = new ModelAndView();
		String view = null;
		Question n = new Question();
		n = iDao.getquestionCheck(aq_num);
		mav.addObject("aq_num", n.getAq_num());
		mav.addObject("aq_mbid", n.getAq_mbid());
		mav.addObject("aq_tye", n.getAq_tye());
		mav.addObject("aq_title", n.getAq_title());
		mav.addObject("aq_contents", n.getAq_contents());
		mav.addObject("aqi_img", n.getAqi_img());
		view = "questionWriteCheck";
		mav.setViewName(view);
		return mav;
	}

	public ModelAndView questionreply(int aq_num, String qr_contents) {
		mav = new ModelAndView();
		String view = null;
		QuestionReply qr = new QuestionReply();
		Notify nf = new Notify();
		Map<String, Object> map = new HashMap<>();
		map.put("aq_num", aq_num);
		map.put("qr_contents", qr_contents);
		boolean a = iDao.getquestionReply(map);
		nf.setNf_num(aq_num);
		System.out.println("[][][][][][][][][][][] = "+nf.getNf_num());
		nf.setNf_mbid_r(iDao.userSel(nf));
		System.out.println("[][][][][][][][][][][] = "+nf.getNf_mbid_r());
		nf.setNf_notify("관리자 가 "+nf.getNf_mbid_r()+" 님의 1:1 문의에대한 답변을 했습니다.");
		System.out.println("[][][][][][][][][][][] = "+nf.getNf_notify());
		iDao.setNotifyAdmin(nf);
		view = "questionList";
		mav.setViewName(view);
		return mav;
	}

	public String memberseclist() {
		List<Member> rList = iDao.getmemberList();
		Gson gs = new Gson();
		String jsonObj = gs.toJson(rList);
		System.out.println(jsonObj);
		return jsonObj;
	}

	public String memberAuthorlist() {
		List<Member> rList = iDao.getmemberAuthorList();
		Gson gs = new Gson();
		String jsonObj = gs.toJson(rList);
		System.out.println(jsonObj);
		return jsonObj;
	}

	public String memberBlacklist() {
		List<Member> rList = iDao.getmemberBlackList();
		Gson gs = new Gson();
		String jsonObj = gs.toJson(rList);
		System.out.println(jsonObj);
		return jsonObj;
	}

	public ModelAndView memberwritecheck(String mb_id) {
		String view = null;
		mav = new ModelAndView();

		MemberSearch ms = new MemberSearch();
		// rp.setRp_num(rp_num);
		System.out.println("와?zz" + mb_id);

		ms = iDao.getMemberCheck(mb_id);
		System.out.println("여기와? ㅋㅋㅋㅋ");
		mav.addObject("mbInfo", ms);
//		mav.addObject("mb_id", mb.getMb_id());
//		mav.addObject("mb_name", mb.getMb_name());
//		mav.addObject("mb_birth", mb.getMb_birth());
//		mav.addObject("mb_email", mb.getMb_email());
//		mav.addObject("mb_point", mb.getMb_point());
//		mav.addObject("mb_ccnt", mb.getMb_ccnt());
		view = "memberListMM";
		mav.setViewName(view);
		return mav;
	}

	public ModelAndView membercaution(String mb_id) {
		mav = new ModelAndView();
		String view = null;
		System.out.println("dddd?"+mb_id);

		boolean m=iDao.getmembercouet(mb_id);
		System.out.println("성공이지?"+mb_id);
		view = "memberList";
		mav.setViewName(view);
		return mav;
	}

	public ModelAndView membercautioncnt(String mb_id) {
		mav = new ModelAndView();
		String view = null;
		System.out.println("dddd?"+mb_id);

		boolean m=iDao.getmemberminuscouet(mb_id);
		System.out.println("성공이지?"+mb_id);
		view = "memberList";
		mav.setViewName(view);
		return mav;
	}

	public String categorycurrent() {
		List<Category> rList = iDao.getcategoryList();
		Gson gs = new Gson();
		String jsonObj = gs.toJson(rList);
		System.out.println(jsonObj);
		return jsonObj;
	}

	public ModelAndView categoryadd(int cg_code, String cg_name) {
		mav = new ModelAndView();
		String view = null;
		Map<String, Object> map = new HashMap<>();
		//map.put("cg_code", cg_code);
		//map.put("cg_name", cg_name);
		System.out.println("ddddd"+cg_code);
		boolean a = iDao.getcotegoryadd(cg_code,cg_name);
		System.out.println("여기까지오면 굿!!");
		view = "categoryEdit";
		mav.setViewName(view);
		return mav;
	}

	public ModelAndView categorydelete(String cg_name) {
		mav = new ModelAndView();
		String view = null;
		boolean a = iDao.getcotegorydel(cg_name);
		System.out.println("여기까지오면 굿!!");
		view = "categoryEdit";
		mav.setViewName(view);
		return mav;
	}

	public ModelAndView categorychange(String cg_name, String cg_cname) {
		mav = new ModelAndView();
		String view = null;
		boolean a = iDao.getcotegoryChange(cg_name,cg_cname);
		System.out.println("여기까지오면 굿!!");
		mav.addObject("cg_name", cg_name);
		view = "categoryEdit";
		mav.setViewName(view);
		return mav;
	}

}

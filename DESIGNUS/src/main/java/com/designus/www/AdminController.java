package com.designus.www;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.bean.Member;
import com.designus.www.service.AdminMM;


@Controller
public class AdminController {

	@Autowired
	private AdminMM adm;
	
	ModelAndView mav;
	@RequestMapping(value = "/adminInfo", method = RequestMethod.GET)
	public String admininfo() {

		return "adminInfo";
		//관리자메인
	}

	@RequestMapping(value = "/declareWrite", method = RequestMethod.GET)
	public String declareWrite() {

		return "declareWrite";
		//신고하기
	}

	@RequestMapping(value = "/questionList", method = RequestMethod.GET)
	public String questionList() {

		return "questionList";
	}
		//1:1문의
	@RequestMapping(value = "/memberList", method = RequestMethod.GET)
	public String memberList() {

		return "memberList";
	}
		//회원관리
	@RequestMapping(value = "/categoryEdit", method = RequestMethod.GET)
	public String categoryEdit() {

		return "categoryEdit";
	}
		//카테고리관리
	@RequestMapping(value = "/permitWriApply", method = RequestMethod.GET)
	public String permitWriApply() {
		
		return "permitWriApply";
	}
		//작가 전환가입신청
	@RequestMapping(value = "/declareWriteCheck", method = RequestMethod.GET)
	public ModelAndView declareWriteCheck(int rp_num) {
		System.out.println("이거찍히니?"+rp_num);
		mav = new ModelAndView();
		mav = adm.declareWriteCheck(rp_num);
		return mav;
	}//신고하기 상세보기 정보
	@RequestMapping(value = "/declarenonpermit", method = RequestMethod.POST)
	public ModelAndView declareNonPermit(int rp_num,String rp_mbid_a) {
		System.out.println("ㅇㅇ?"+rp_mbid_a);
		mav = adm.declareNonPermit(rp_num);
		return mav;
		//신고하기 부적합
	}
	@RequestMapping(value = "/declarepermit", method = RequestMethod.POST)
	public ModelAndView declarepermit(int rp_num ,String mb_id) {
		System.out.println("hh?");
		mav = adm.declarepermit(rp_num,mb_id);
		return mav;
		//신고하기 적합
	}
	@RequestMapping(value = "/permitWriDetail", method = RequestMethod.GET)
	public ModelAndView permitWriDetail(String mb_id) {
		System.out.println("이거찍히니?"+mb_id);
		mav = new ModelAndView();
		mav = adm.permitWriDetail(mb_id);
		return mav;
	} //작가전환신청상세보기
	@RequestMapping(value = "/tcommentandrefuse", method = RequestMethod.POST)
	public ModelAndView tcommentandrefuse(String mb_id) {
		System.out.println("이거찍히니?"+mb_id);
		mav = new ModelAndView();
		mav = adm.tcommentandrefuse(mb_id);
		return mav;
	} //작가전환신청가입거절
	@RequestMapping(value = "/tcommentandapply", method = RequestMethod.POST)
	public ModelAndView tcommentandapply(String mb_id) {
		System.out.println("이거찍히니?"+mb_id);
		mav = new ModelAndView();
		mav = adm.tcommentandapply(mb_id);
		return mav;
	} //작가전환신청가입승인
	@RequestMapping(value = "/questionWriteCheck", method = RequestMethod.GET)
	public ModelAndView questionWriteCheck(int aq_num) {
		mav = new ModelAndView();
		mav = adm.questionWriteCheck(aq_num);
		return mav;
	}//1:1문의 상세내역
	@RequestMapping(value = "/questionreply", method = RequestMethod.POST)
	public ModelAndView questionreply(int aq_num, String qr_contents) {
		mav = new ModelAndView();
		System.out.println("aq_num"+aq_num);
		System.out.println("qr_contents"+qr_contents);
		mav = adm.questionreply(aq_num,qr_contents);
		return mav;
	}//1:1문의 상세내역 답글달기

}

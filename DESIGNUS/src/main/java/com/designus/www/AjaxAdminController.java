package com.designus.www;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.designus.www.service.AdminMM;

@RestController
public class AjaxAdminController {
	@Autowired
	private AdminMM adm;

	@RequestMapping(value = "/declarewritecheck", method = RequestMethod.POST, produces = "application/json; charset=utf-8;")
	public String declarewritecheck() {
		String check = adm.declarewritecheck();
		System.out.println("cm=" + adm.declarewritecheck());
		System.out.println("aList=" + check);
		return check;
		//관리자페이지 신고하기 정보
	}

	@RequestMapping(value = "/Declarelist", method = RequestMethod.POST, produces = "application/json; charset=utf-8;")
	public String Declarelist() {
		String check = adm.Declarelist();
		return check;
		//신고내역페이지 신고정보
	}

	@RequestMapping(value = "/transformList", method = RequestMethod.POST, produces = "application/json; charset=utf-8;")
	public String transformList() {
		String check = adm.transformList();
		return check;
		//관리자페이지 작가신청정보
	}

	@RequestMapping(value = "/transformwridetail", method = RequestMethod.POST, produces = "application/json; charset=utf-8;")
	public String transformwridetail() {
		String check = adm.transformwridetail();
		System.out.println("aList=" + check);
		return check;
		//작가전환페이지 신청정보
	}

	@RequestMapping(value = "/questionWrite", method = RequestMethod.POST, produces = "application/json; charset=utf-8;")
	public @ResponseBody String questionwritecheck() {
		String check = adm.questionwritecheck();
		return check;

		//1:1문의 리스트
	}
	@RequestMapping(value = "/memberseclist", method = RequestMethod.POST, produces = "application/json; charset=utf-8;")
	public @ResponseBody String memberseclist() {
		String check = adm.memberseclist();
		return check;
		
		//일반회원 리스트
	}
	@RequestMapping(value = "/memberAuthorlist", method = RequestMethod.POST, produces = "application/json; charset=utf-8;")
	public @ResponseBody String memberAuthorlist() {
		String check = adm.memberAuthorlist();
		return check;
		
		//작가회원 리스트
	}
	@RequestMapping(value = "/memberBlacklist", method = RequestMethod.POST, produces = "application/json; charset=utf-8;")
	public @ResponseBody String memberBlacklist() {
		String check = adm.memberBlacklist();
		return check;
		
		//블랙 리스트
	}
	@RequestMapping(value = "/categorycurrent", method = RequestMethod.POST, produces = "application/json; charset=utf-8;")
	public @ResponseBody String categorycurrent() {
		String check = adm.categorycurrent();
		return check;
		
		//카테고리 리스트
	}
}
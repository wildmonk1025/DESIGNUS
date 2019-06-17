package com.designus.www;

import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.designus.www.service.AdminMM;

@RestController
public class AjaxAdminController {
	@Autowired
	private AdminMM am;
	  @RequestMapping() public String norJoinFrm() {
	  return "norjoinFrm";
	  }
		@RequestMapping(value = "/declarewritecheck", method = RequestMethod.POST, produces="application/json; charset=utf-8;")
		public String declarewritecheck() {
			String check = am.declarewritecheck();
			 System.out.println("cm="+am.declarewritecheck());
			  System.out.println("aList="+check);
			return check;
			//관리자페이지 신고하기 정보
		}
		@RequestMapping(value = "/Declarelist", method = RequestMethod.POST, produces="application/json; charset=utf-8;")
		public String Declarelist() {
			String check = am.Declarelist();
			System.out.println("cm="+am.declarewritecheck());
			System.out.println("aList="+check);
			return check;
			//신고내역페이지 신고정보
		}
		@RequestMapping(value = "/transformList", method = RequestMethod.POST, produces="application/json; charset=utf-8;")
		public String transformList() {
			String check = am.transformList();
			System.out.println("cm="+am.transformList());
			System.out.println("aList="+check);
			return check;
			//관리자페이지 작가신청정보
		}
		@RequestMapping(value = "/transformwridetail", method = RequestMethod.POST, produces="application/json; charset=utf-8;")
		public String transformwridetail() {
			String check = am.transformwridetail();
			System.out.println("aList="+check);
			return check;
			//작가전환페이지 신청정보
		}
}

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

		}
		@RequestMapping(value = "/Declarelist", method = RequestMethod.POST, produces="application/json; charset=utf-8;")
		public String Declarelist() {
			String check = am.Declarelist();
			System.out.println("cm="+am.declarewritecheck());
			System.out.println("aList="+check);
			return check;
			
		}
}

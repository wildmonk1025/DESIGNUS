package com.designus.www;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.designus.www.bean.Report;
import com.designus.www.service.AdminMM;

@Controller
public class AdminController {

	@RequestMapping(value = "/adminInfo", method = RequestMethod.GET)
	public String admininfo() {

		return "adminInfo";
	}

	@RequestMapping(value = "/declareWrite", method = RequestMethod.GET)
	public String declareWrite() {

		return "declareWrite";
	}

	@RequestMapping(value = "/questionList", method = RequestMethod.GET)
	public String questionList() {

		return "questionList";
	}

	@RequestMapping(value = "/memberList", method = RequestMethod.GET)
	public String memberList() {

		return "memberList";
	}

	@RequestMapping(value = "/permitWriApply", method = RequestMethod.GET)
	public String permitWriApply() {

		return "permitWriApply";
	}

	@RequestMapping(value = "/transformList", method = RequestMethod.GET)
	public String transformList() {

		return "transformList";
	}

	@RequestMapping(value = "/categoryEdit", method = RequestMethod.GET)
	public String categoryEdit() {
		
		return "categoryEdit";
	}

}

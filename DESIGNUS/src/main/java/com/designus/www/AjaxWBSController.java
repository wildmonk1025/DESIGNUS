package com.designus.www;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller; 
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.designus.www.service.BoardMM;

@RestController
public class AjaxWBSController {
	
	@Autowired
	private BoardMM bm;
	
	@RequestMapping(value = "/reviewboardlistInfo", method = RequestMethod.POST, produces = "application/json; charset=utf-8;")
	public String declarewritecheck(int bd_num) {
		System.out.println("num확인=========="+bd_num);
		String check = bm.reviewboardlistInfo(bd_num);
		System.out.println("aList=" + check);
		return check;
		
	}//이용후기 게시판 상세
	 
}

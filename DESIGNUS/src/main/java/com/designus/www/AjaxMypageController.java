package com.designus.www;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.designus.www.bean.Major;
import com.designus.www.service.MypageMM;

@RestController
public class AjaxMypageController {
	@Autowired
	private MypageMM pm;
	@RequestMapping(value = "ajax/lbauc",produces="application/json;charset=utf8")
	//json을 커맨드 객체 ( Reply r: 요청을 받아드리는 객체)에 저장하기 위해서는 @RequestBody 사용해야 함.
	public String lbauc() {
		System.out.println("컨트롤러 왔다 소리 질러~~~");
		
		String aa=pm.lbauc();
		return aa;
	}
	@RequestMapping(value = "ajax/lbrev",produces="application/json;charset=utf8")
	//json을 커맨드 객체 ( Reply r: 요청을 받아드리는 객체)에 저장하기 위해서는 @RequestBody 사용해야 함.
	public String lbrev() {
		System.out.println("컨트롤러 왔다 소리 질러~~~");
		
		String cc=pm.lbrev();
		return cc;
	}
	@RequestMapping(value = "ajax/lbspon",produces="application/json;charset=utf8")
	//json을 커맨드 객체 ( Reply r: 요청을 받아드리는 객체)에 저장하기 위해서는 @RequestBody 사용해야 함.
	public String lbspon() {
		System.out.println("컨트롤러 왔다 소리 질러~~~");
		
		String bb=pm.lbspon();
		return bb;
	}
	
}

package com.designus.www;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.designus.www.bean.Major;
import com.designus.www.service.MypageMM;

@RestController
public class AjaxMypageController {
	@Autowired
	private MypageMM pm;
	/*
	 * @RequestMapping(value =
	 * "/nortowriapply",produces="application/json;charset=utf8") //json을 커맨드 객체 (
	 * Reply r: 요청을 받아드리는 객체)에 저장하기 위해서는 @RequestBody 사용해야 함. public boolean
	 * nortowriapply(MultipartHttpServletRequest multi) {
	 * System.out.println("r_bnum"+multi.getParameter("mj_cg_code"));
	 * System.out.println("r_contents"+multi.getParameter("mj_contents")); boolean
	 * p=pm.nortowriapply(multi); return p; //jackson:Map-->json으로 변환
	 * //{'rList',rList} ---> {"rList":[],[],[]} }
	 */
}

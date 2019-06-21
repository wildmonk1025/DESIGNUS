package com.designus.www;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.bean.QnA;
import com.designus.www.service.BoardMM;
import com.designus.www.service.ServiceMM;

@Controller
public class WBSController {
	
	@Autowired
	private ServiceMM sem;
	
	@Autowired
	private BoardMM bm;
	
	ModelAndView mav;
	

	
	@RequestMapping(value = "/scquestion")
	public ModelAndView scquestion() {
		mav = new ModelAndView();
		mav = sem.servicescquestion();
		
		return mav;
	}

	@RequestMapping(value = "/sc_questionFrm")
	public ModelAndView sc_questionFrm(MultipartHttpServletRequest multi) {
		mav = new ModelAndView();
		mav = sem.sc_questionFrm(multi);
		return mav;
	}
	
	@RequestMapping(value = "/scqna", method = RequestMethod.GET)
	public ModelAndView scqna(String qnakind) {
		mav = new ModelAndView();
		String view = "sc_QnA";
		
		
		mav.setViewName(view);
		return mav;
	}

	@RequestMapping(value = "/scdeclare" )
	public String scdeclare() {  
		return "sc_112";
	}
	

	@RequestMapping(value = "/sc_reportFrm" )
	public ModelAndView sc_reportFrm(MultipartHttpServletRequest multi) {  
		mav = new ModelAndView();
		mav = sem.sc_reportFrm(multi);
		return mav;
	}
	
	//ajax
	@RequestMapping(value = "/qnaselect",  method = { RequestMethod.GET,
			RequestMethod.POST }, produces = "application/json;charset=utf8")
	public @ResponseBody String qnaselect(@RequestBody QnA qna) {
		String json = sem.qnaselect(qna);
		
		
		return json;
	}
	@RequestMapping(value = "/reviewboard")
	public ModelAndView reviewboardlist(Integer pageNum) {
		mav = bm.reviewboardlist(pageNum);
		return mav;
	
		
		//이용후기 리스트
	
	}
	@RequestMapping(value = "/reviewlike", method = RequestMethod.GET)
	public ModelAndView reviewlike(int bd_num) {
		ModelAndView mav = new ModelAndView();
		System.out.println("zzzzzzzzzzz"+bd_num);
		mav = bm.reviewlike(bd_num);
		return mav;
		
		
		//이용후기추천하기
		
	}
	@RequestMapping(value = "/reviewchange", method = RequestMethod.POST)
	public ModelAndView reviewchange(int bd_num, String bd_contents, String bd_mbid) {
		ModelAndView mav = new ModelAndView();
		System.out.println("zzzzzzzzzzz"+bd_num);
		mav = bm.reviewchange(bd_num,bd_contents,bd_mbid);
		return mav;
		
		
		//이용후기변경
		
	}
	@RequestMapping(value = "/reviewdelete", method = RequestMethod.POST)
	public ModelAndView reviewdelete(int bd_num, String bd_contents, String bd_mbid) {
		ModelAndView mav = new ModelAndView();
		System.out.println("zzzzzzzzzzz"+bd_num);
		mav = bm.reviewdelete(bd_num,bd_contents,bd_mbid);
		return mav;
		
		
		//이용후기삭제
		
	}
	@RequestMapping(value = "/reviewcomment", method = RequestMethod.POST)
	public ModelAndView reviewcomment(String bdc_contents, int bd_num) {
		ModelAndView mav = new ModelAndView();
		mav = bm.reviewcomment(bdc_contents,bd_num);
		System.out.println("dddddd"+bdc_contents+bd_num);
		return mav;
		
		
		//이용후기댓글
		
	}
	
	
	
	
	
}

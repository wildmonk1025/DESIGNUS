package com.designus.www;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.service.AuctionMM;


@Controller
public class AuctionController {
	
	@Autowired
	private AuctionMM aum;
	
	ModelAndView mav;
	
	@RequestMapping(value = "/sponsor", method = RequestMethod.GET)
	public String sponsor() {
		
		return "sponsor";
	}	
	
	@RequestMapping(value = "/auctionWrite" )
	public ModelAndView auctionWrite() {
		mav = new ModelAndView();
			
		return mav;
	}
	
	@RequestMapping(value = "/auctionWriteSubmit" )
	public ModelAndView auctionWrite(MultipartHttpServletRequest multi) {
		mav = new ModelAndView();
		mav = aum.auctionWriteSubmit(multi);
		return mav;
	}
	
	@RequestMapping(value = "/auctionList" )
	public ModelAndView auctionList(int cgcode) {
		mav = new ModelAndView();
		System.out.println("cgcode:="+cgcode);
		mav = aum.auctionList(cgcode);
		
		return mav;
	}

	@RequestMapping(value = "/auctionRead" )
	public ModelAndView auctionRead(int au_num,int nb) {
		mav = new ModelAndView();
		System.out.println("여기 오냐??1");
		mav = aum.auctionRead(au_num,nb);
		System.out.println("여기 오냐??2");
		return mav;
	}
	
	/*  ajax 로 해서 필요 없을듯한 코드
	@RequestMapping(value = "/shopbasket" )
	public ModelAndView shopbasket(int ab_aunum) {
		mav = new ModelAndView();
		mav = aum.shopbasket(ab_aunum);
		
		return mav;
	}
	*/
	
}

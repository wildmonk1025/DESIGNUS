package com.designus.www;

import java.text.ParseException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.service.RevAuctionMM;

@Controller
public class AuctionController_sub {
	/*
	 * @Autowired private CommonMM cm;
	 */

	@Autowired
	private RevAuctionMM ram;
	ModelAndView mav;

	@RequestMapping(value = "/revauctionWrite", method = RequestMethod.GET)
	public ModelAndView revAuctionWrite() {
		mav = new ModelAndView();
		mav.setViewName("revAuctionWrite"); // joinFrm 하나 생성
		return mav;
	}

	@RequestMapping(value = "/revauctionsubmit", method = RequestMethod.POST)
	public ModelAndView revAuctionSubmit(MultipartHttpServletRequest multi) {
		mav = ram.revAuctionSubmit(multi);
		return mav;
	}
	
	@RequestMapping(value = "/revauctionread")
	public ModelAndView revAuctionRead(int ra_num) throws ParseException {
		///{ra_num}
		//@PathVariable
		mav = ram.revAuctionRead(ra_num);
		return mav;
		}
	
	@RequestMapping(value = "/ratfiledownload", method = RequestMethod.GET)
	public ModelAndView download(@RequestParam Map<String,Object> params,HttpServletRequest request,HttpServletResponse response)
	throws Exception{
		System.out.println("rat_file="+params.get("rat_file"));
		//params.put("root",request.getSession().getServletContext().getRealPath("/")); //다운로드할 파일이 있는 경로를 설정
		params.put("root","C:/Users/wildm/git/DESIGNUS/DESIGNUS/src/main/webapp/"); //다운로드할 파일이 있는 경로를 설정
		
		params.put("response", response);
		mav = ram.ratFileDownload(params);
		
		return mav;
	}
}
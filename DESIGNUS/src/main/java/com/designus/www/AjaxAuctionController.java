package com.designus.www;


import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.designus.www.bean.RevAuctionTender;
import com.designus.www.service.AuctionMM;
import com.designus.www.service.RevAuctionMM;

@RestController
public class AjaxAuctionController {
	/*
	 * @RequestMapping() public String norJoinFrm() { return "norjoinFrm"; }
	 */
	@Autowired
	private AuctionMM aum;
	@Autowired
	private RevAuctionMM ram;
	
	@RequestMapping(value = "ajax/BasketSelect",method = {RequestMethod.POST,RequestMethod.GET})
	public int ajaxBasketSelect(int num) {

		int number = aum.basketSelect(num); 
		
		
		return number;
	}

	@RequestMapping(value = "ajax/revBasketSelect",method = {RequestMethod.POST,RequestMethod.GET})
	public int ajaxrevBasketSelect(int num) {
		
		int number = ram.revbasketSelect(num); 
		
		
		return number;
	}

	@RequestMapping(value = "ajax/revauction", method = { RequestMethod.POST, RequestMethod.GET }, produces="application/json; charset=utf-8")
	public @ResponseBody String revAuctionAjax(RevAuctionTender rat_ranum) {
		String jsonStr = ram.revAuctionAjax(rat_ranum);
		System.out.println("jsonStr="+jsonStr);
		return jsonStr;
	}
	
	@RequestMapping(value = "ajax/revauctionapply", produces="application/json; charset=utf-8")
	public String revAuctionApply(@RequestParam Map<String,String> multi,@RequestPart(value="revfile",required=false) MultipartHttpServletRequest file) {
		System.out.println("여기까지 오는데엔 성공");
		System.out.println(multi.get("revadate"));
		System.out.println(multi.get("revafile"));
		System.out.println(file);
		System.out.println(file.getParameter("revfile"));
		System.out.println(((MultipartFile) file).getOriginalFilename());
		
		//ram.revAuctionApply(multi);
		return null;
	}

}

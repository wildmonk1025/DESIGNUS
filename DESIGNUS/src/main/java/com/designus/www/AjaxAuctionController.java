package com.designus.www;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.bean.RevAuctionTender;
import com.designus.www.service.AuctionMM;
import com.designus.www.service.CommonMM;
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

}

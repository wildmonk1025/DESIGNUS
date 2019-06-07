package com.designus.www;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.service.AuctionMM;
import com.designus.www.service.CommonMM;

@RestController
public class AjaxAuctionController {
	/*
	 * @RequestMapping() public String norJoinFrm() { return "norjoinFrm"; }
	 */
	@Autowired
	private AuctionMM aum;
	
	
	@RequestMapping(value = "ajax/BasketSelect",method = {RequestMethod.POST,RequestMethod.GET})
	public int ajaxBasketSelect(int num) {

		int number = aum.basketSelect(num); 
		
		
		return number;
	}
}

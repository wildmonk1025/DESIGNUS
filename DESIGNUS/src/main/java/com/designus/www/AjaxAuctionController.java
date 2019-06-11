package com.designus.www;




import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.designus.www.bean.RevAuctionTender;
import com.designus.www.service.AuctionMM;
import com.designus.www.service.RevAuctionMM;
import com.google.gson.Gson;
@RestController
@RequestMapping(value="/ajax")
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
	//public String revAuctionApply(@RequestParam Map<String,String> multi,@RequestPart(value="file",required=false) MultipartHttpServletRequest file) {
	public String revAuctionApply(MultipartHttpServletRequest multi) {
		String str = ram.revAuctionApply(multi);
		String jsonStr = new Gson().toJson(str);
		return jsonStr;
	}

}

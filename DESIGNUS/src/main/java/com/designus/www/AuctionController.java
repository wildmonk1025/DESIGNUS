package com.designus.www;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AuctionController {
	@RequestMapping()
	public String norJoinFrm() {
		
		return "norjoinFrm";
	}
}

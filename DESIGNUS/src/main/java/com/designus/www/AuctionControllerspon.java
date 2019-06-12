package com.designus.www;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AuctionControllerspon {
	@RequestMapping(value = "/sponregistration", method = RequestMethod.GET)
	public String sponRegistrationFrm() {

		return "sponRegistrationFrm";
	}
}

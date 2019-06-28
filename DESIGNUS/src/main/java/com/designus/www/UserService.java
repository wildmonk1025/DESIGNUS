package com.designus.www;


import java.text.ParseException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;

import com.designus.www.service.ScheduledMM;

@Controller
public class UserService {
	@Autowired
	private ScheduledMM sm;
	
	public User findAccount(String email) {
		// TODO Auto-generated method stub
		return null;
	}

	public void updateInfo(String username, String string, String password) {
		// TODO Auto-generated method stub

	}

	@Scheduled(cron="0 0/30 * * * * ")
	public void adExpirePeriod() throws ParseException {
		System.out.println("스케쥴러 : adExpirePeriod ");
		sm.revAuctionCompleteTask();
	}
	
}

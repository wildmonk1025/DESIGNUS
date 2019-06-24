package com.designus.www;


import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;

import com.designus.www.service.ScheduledMM;

@Controller
public class UserService {

	public User findAccount(String email) {
		// TODO Auto-generated method stub
		return null;
	}

	public void updateInfo(String username, String string, String password) {
		// TODO Auto-generated method stub

	}

	@Scheduled(cron="0 0/1 * * * * ")   
	public void adExpirePeriod() {
		ScheduledMM sm = new ScheduledMM();
		System.out.println("스케쥴러 : adExpirePeriod ");
		sm.revAuctionCompleteTask();
	}
	
}

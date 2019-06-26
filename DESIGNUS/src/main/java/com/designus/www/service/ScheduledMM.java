package com.designus.www.service;

import java.text.ParseException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.designus.www.bean.RevAuction;
import com.designus.www.dao.IRevAuctionDao;
import com.designus.www.userClass.DateAdjust;

@Service
public class ScheduledMM {
	@Autowired
	private IRevAuctionDao rDao;
	
	public void revAuctionCompleteTask() throws ParseException {
		
		DateAdjust da = new DateAdjust();
		List<RevAuction> raList = rDao.selectRevAuction();
		int check = 0;
		System.out.println("검토할 RevAuction 리스트 개수="+raList.size());
		
		for(int i=0;i<raList.size();i++) {
			if(!da.deleteDateToBoolean(raList.get(i).getRa_date())) {
				check += rDao.changeRaocColumn(raList.get(i).getRa_num());
			}
		}
		
		System.out.println("완료되어 변경된 Revauction 개수 ="+check);
	}
}
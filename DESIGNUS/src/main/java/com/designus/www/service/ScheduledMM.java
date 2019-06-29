package com.designus.www.service;

import java.text.ParseException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.designus.www.bean.Auction;
import com.designus.www.bean.AuctionTender;
import com.designus.www.bean.RevAuction;
import com.designus.www.dao.IRevAuctionDao;
import com.designus.www.dao.IauctionDao;
import com.designus.www.userClass.DateAdjust;

@Service
public class ScheduledMM {
	@Autowired
	private IRevAuctionDao rDao;
	@Autowired
	private IauctionDao aDao;

	public void revAuctionCompleteTask() throws ParseException {

		DateAdjust da = new DateAdjust();
		List<RevAuction> raList = rDao.selectRevAuction();
		int check = 0;
		System.out.println("검토할 RevAuction 리스트 개수=" + raList.size());

		for (int i = 0; i < raList.size(); i++) {
			if (!da.deleteDateToBoolean(raList.get(i).getRa_date())) {
				check += rDao.changeRaocColumn(raList.get(i).getRa_num());
			}
		}

		System.out.println("완료되어 변경된 Revauction 개수 =" + check);
	}

	public void updateautkind() throws ParseException {
		List<AuctionTender> autList = aDao.EndTenderAuction();
		AuctionTender at = new AuctionTender();
		System.out.println("검토할 Aut 리스트 개수=" + autList.size());
		
		for (int j = 0; j < autList.size(); j++) {
			at.setAut_aunum(autList.get(j).getAut_aunum());
			at.setAut_price(autList.get(j).getAut_price());
			at.setAut_mbid(autList.get(j).getAut_mbid());
			at.setAut_date(autList.get(j).getAut_date().substring(0, 19).replace("-", "/"));
			System.out.println("[][][][][][][] num j = " + j);
			if(aDao.getAUPsel(at) == 0 ) {
				boolean a = aDao.setInsertAUP(at);
				if(a) {
					System.out.println("성공???");
				}
				aDao.updateAUTkind(at);
			}

		} 
	}
}

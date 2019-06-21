package com.designus.www.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.bean.Auction;
import com.designus.www.bean.Member;
import com.designus.www.bean.Report;
import com.designus.www.bean.Sponsor;
import com.designus.www.bean.SponsorProgress;
import com.designus.www.bean.SponsorTender;
import com.designus.www.bean.revAuctionProgress;
import com.designus.www.dao.IsponsorDao;
import com.designus.www.userClass.UploadFile;
import com.google.gson.Gson;

import lombok.Data;

@Service
public class SponsorMM {

	@Autowired
	private IsponsorDao sDao;
	@Autowired
	private HttpSession session;
	@Autowired
	private UploadFile upload;
	@Autowired
	HttpServletResponse response;

	Sponsor sp;
	Member mb;

	private ModelAndView mav;

	public ModelAndView sponupload(MultipartHttpServletRequest multi) {
		System.out.println("넘어와라ㅏ");

		mav = new ModelAndView();
		String view = null;
		int num = 10000;
		String id = (String) session.getAttribute("id");
		String sstitle = multi.getParameter("ss_title");
		int ssprice = Integer.parseInt(multi.getParameter("ss_price"));
		int ssqty = Integer.parseInt(multi.getParameter("ss_goalqty"));
		String scontents = multi.getParameter("ss_contents");
		int check = Integer.parseInt(multi.getParameter("fileCheck"));

		Sponsor sp = new Sponsor();
		sp.setSs_mbid_w(id);
		sp.setSs_title(sstitle);
		sp.setSs_price(ssprice);
		sp.setSs_goalqty(ssqty);
		sp.setSs_contents(scontents);

		sDao.sponuploadInsert(sp);
		num = sDao.getSponserwri(sp);

		sp.setSs_num(num);
		boolean f = false;
		if (check == 1) {
			f = upload.fileUpsponsor(multi, sp);
			view = "sponsor";
		}

		mav.setViewName(view);
		return mav;
	}

	public String productinfo() {
		System.out.println("후원리스트 불러오기");
		List<Sponsor> spList = sDao.productinfo();
		Gson gs = new Gson();
		String jsonObj = gs.toJson(spList);
		System.out.println(jsonObj);

		return jsonObj;
	}

	public ModelAndView sponproduct(int ss_num) throws ParseException {
		String view = null;
		mav = new ModelAndView();

		/*
		 * List<Sponsor> spList = sDao.productinfo(); Gson gs = new Gson(); String
		 * jsonObj = gs.toJson(spList); System.out.println(jsonObj);
		 */
		String today = null;

		Sponsor sm = new Sponsor();
		SponsorProgress sp = new SponsorProgress();

		// ss.setSs_num(ss_num);
		System.out.println("넘어오나용" + ss_num);
		sm = sDao.getSponcheck(ss_num);
		sp = sDao.getCountcheck(ss_num);
		
		String date1 = sm.getSs_date();
		String date2 = sm.getEnd_data2();
		
		 try{ // String Type을 Date Type으로 캐스팅하면서 생기는 예외로 인해 여기서 예외처리 해주지 않으면 컴파일러에서 에러가 발생해서 컴파일을 할 수 없다.
		        SimpleDateFormat format = new SimpleDateFormat("yyyy-mm-dd");
		        // date1, date2 두 날짜를 parse()를 통해 Date형으로 변환.
		        Date FirstDate = format.parse(date1);
		        Date SecondDate = format.parse(date2);
		        
		        // Date로 변환된 두 날짜를 계산한 뒤 그 리턴값으로 long type 변수를 초기화 하고 있다.
		        // 연산결과 -950400000. long type 으로 return 된다.
		        long calDate = FirstDate.getTime() - SecondDate.getTime(); 
		        
		        // Date.getTime() 은 해당날짜를 기준으로1970년 00:00:00 부터 몇 초가 흘렀는지를 반환해준다. 
		        // 이제 24*60*60*1000(각 시간값에 따른 차이점) 을 나눠주면 일수가 나온다.
		        long calDateDays = calDate / ( 24*60*60*1000); 
		 
		        calDateDays = Math.abs(calDateDays);
		        
		        System.out.println("두 날짜의 날짜 차이: "+calDateDays);
		        }
		        catch(ParseException e)
		        {
		            // 예외 처리
		        }

		System.out.println("담기나??=" + sp.getSsp_count());

		sm.setSs_num(ss_num);
		sp.setSsp_ssnum(ss_num);

		int cnt = 0;
		cnt = sp.getSsp_count();

		if (ss_num == sm.getSs_num()) {
			System.out.println("여긴뭐지");
			mav.addObject("ss_num", sm.getSs_num());
			mav.addObject("ss_mbid_w", sm.getSs_mbid_w());
			mav.addObject("ss_title", sm.getSs_title());
			mav.addObject("ssi_ssi_imgSysName", sm.getSsi_imgSysName());
			mav.addObject("ss_contents", sm.getSs_contents());
			mav.addObject("ss_price", sm.getSs_price());
			mav.addObject("ss_goalqty", sm.getSs_goalqty());
			mav.addObject("ss_date", sm.getSs_date());
			mav.addObject("ss_date2", sm.getEnd_data2());
			mav.addObject("st_count", cnt);
			view = "sponProductFrm";
		} else {
			view = "sponsor";
		}
		mav.setViewName(view);
		return mav;
	}

	public String sponbuy(Sponsor ss) {

		Sponsor sm = new Sponsor();
		SponsorProgress sp = new SponsorProgress();

		System.out.println("후원 밀어주기??");

		String id = (String) session.getAttribute("id");
		String grade = (String) session.getAttribute("grade");

		int ss_num = ss.getSs_num();
		ss.setSs_mbid_w(id);

		System.out.println(ss_num);
		
		sm = sDao.getSponcheck(ss_num);
		sp = sDao.getCountcheck(ss_num);
		
		String json = new Gson().toJson(ss);

		System.out.println("회원등급=" + grade);
		System.out.println("넘버=" + json);

		// 포인트 있을때만 밀어주기 가능하게 바꿔야함

		boolean f = sDao.sponTenderInsert(ss);
		System.out.println("밀어주기 insert");
		// 밀어주기 insert
		if (f == true) {
			sDao.sponbuy(ss);
			System.out.println("거래내역 insert");
		} else {
			System.out.println("ㄴㄴ");
		}

		return json;
	}
}

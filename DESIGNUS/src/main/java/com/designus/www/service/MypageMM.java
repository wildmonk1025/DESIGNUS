package com.designus.www.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.bean.AuctionProgress;
import com.designus.www.bean.Basket;
import com.designus.www.bean.Major;
import com.designus.www.bean.Member;
import com.designus.www.dao.ImemberDao;
import com.designus.www.dao.ImypageDao;
import com.google.gson.Gson;

@Service
public class MypageMM {
	ModelAndView mav;
	@Autowired
	private ImypageDao pDao;
	@Autowired
	private HttpSession session;
	@Autowired
	private com.designus.www.userClass.UploadFile upload;

	public ModelAndView historylist(String list) {
		mav = new ModelAndView();

		String view = null;
		/*
		 * List<Basket> lbauc = null; List<Basket> lbrev = null; List<Basket> lbspon =
		 * null;
		 */

		System.out.println("sddd:" + list);
		if (list.equals("rev")) {
			view = "revAuctionMyOrderList";
		} else if (list.equals("revre")) {
			view = "revAuctionMyAcceptList";
		} else if (list.equals("auc")) {
			view = "redirect:/auctionMyOrderList";
		} else if (list.equals("aucre")) {
			view = "auctionMyAcceptList";
		} else if (list.equals("spon")) {
			view = "fundingAcceptList";
		} else if (list.equals("sponre")) {
			view = "fundingOrderList";
		} else {
			view = "redirect:/basketFrm?kind=A";
		}
		mav.setViewName(view);
		return mav;
	}

	public ModelAndView privacyedit() {
		mav = new ModelAndView();
		String view = null;
		String id = session.getAttribute("id").toString();
		Member mb = new Member();

		mb = pDao.privacyeditSelect(id);
		if (mb != null) {
			mav.addObject("mb", mb);
			view = "memberEdit";
		} else {
			view = "myPage";
		}

		mav.setViewName(view);
		return mav;
	}

	public ModelAndView memberout() {
		mav = new ModelAndView();
		String id = session.getAttribute("id").toString();
		mav.addObject("id", id);
		mav.setViewName("memberDelete");
		return mav;
	}

	public ModelAndView nortowri() {
		mav = new ModelAndView();
		String id = session.getAttribute("id").toString();
		mav.addObject("id", id);
		mav.setViewName("memberTransform");
		return mav;
	}

	public ModelAndView memberrevise(MultipartHttpServletRequest multi, String kind) {
		mav = new ModelAndView();
		String view = null;
		kind = "M";
		int check = Integer.parseInt(multi.getParameter("fileCheck"));
		String id = session.getAttribute("id").toString();
		String pw = (multi.getParameter("mb_pw"));
		String address = (multi.getParameter("mb_address"));
		String email = (multi.getParameter("mb_email"));
		String profile = multi.getParameter("mb_profile");
		System.out.println("id" + id);
		System.out.println("id" + pw);
		System.out.println("id" + address);
		System.out.println("id" + email);
		Member mb = new Member();
		BCryptPasswordEncoder pwdEncoder = new BCryptPasswordEncoder();
		mb.setMb_pw(pwdEncoder.encode(pw));
		mb.setMb_id(id);
		mb.setMb_address(address);
		mb.setMb_email(email);
		mb.setMb_profile(profile);
		boolean f = false;
		if (check == 1) { // 첨부된 파일이 있다면....
			// upload=new UploadFile(); //프로토타입
			// 이클립스 서버에 파일을 업로드 한 후,
			// 오리지널 파일명,시스텀 파일명을 리턴 후 맵에 저장
			f = upload.fileUp(multi, mb, kind);
			if (f) {
				System.out.println("일단 여기까지는 된건데....");
				view = "redirect:myPage";
			} else {
				System.out.println("인설트 실패인데....");
				view = "memberEdit";
			}
		} else {
			System.out.println("파일이 없다는건데....");
			view = "memberEdit";
		}
		System.out.println(view);
		mav.setViewName(view);

		return mav;
	}

	@Transactional
	public ModelAndView withdrawalconfirm(Member mb) {
		mav = new ModelAndView();

		String view = null;
		String id = session.getAttribute("id").toString();
		mb.setMb_id(id);
		BCryptPasswordEncoder pwdEncoder = new BCryptPasswordEncoder();
		System.out.println("idididi" + mb.getMb_id());
		String pwdEncode = pDao.withdrawalconfirmselect(mb.getMb_id());

		System.out.println("dddddddd" + mb.getMb_pw());

		if (pwdEncode != null) {
			System.out.println("일단 아이디는 가져 왔고 된거고...");
			System.out.println("111111111" + pwdEncoder.matches(mb.getMb_pw(), pwdEncode));
			if (pwdEncoder.matches(mb.getMb_pw(), pwdEncode)) {
				System.out.println("일단 복호화는 된거고...");
				Member mmd = pDao.withdrawalconfirmselect2(mb.getMb_id());
				if (pDao.withdrawalconfirmInsert(mmd)) {
					System.out.println("인설트까지는 된건데.....");
					pDao.withdrawalconfirmDelete(mb);
					session.invalidate();
					view = "home";
				} else {
					view = "memberDelete";
				}
			} else {
				System.out.println("이쪽으로 오는건가...??");

			}
		}
		mav.setViewName(view);
		return mav;
	}

	public ModelAndView nortowriapply(MultipartHttpServletRequest multi) {
		mav = new ModelAndView();
		String view = null;

		String id = session.getAttribute("id").toString();
		int cate = Integer.parseInt(multi.getParameter("mj_cg_code"));
		String conten = multi.getParameter("mj_contents");
		int check = Integer.parseInt(multi.getParameter("fileCheck"));

		Major mj = new Major();
		mj.setMj_id(id);
		mj.setMj_cg_code(cate);
		mj.setMj_contents(conten);

		boolean f = false;
		if (check == 1) { // 첨부된 파일이 있다면....
			// upload=new UploadFile(); //프로토타입
			// 이클립스 서버에 파일을 업로드 한 후,
			// 오리지널 파일명,시스텀 파일명을 리턴 후 맵에 저장
			f = upload.swfileUp(multi, mj);
			if (f) {
				boolean b = pDao.nortowriapplyupdate(mj.getMj_id());
				if (b) {
					view = "myPage";
				} else {
					view = "memberTransform";
				}

			}
		} else {
			System.out.println("ㅆ.......여기로 오네....");
			view = "memberTransform";
		}

		mav.setViewName(view);
		return mav;
	}
	
	public ModelAndView basketFrmrev(Integer pageNum, String kind) {
	
		mav = new ModelAndView();
		String view = null;
		List<Basket> rList = null;
		String id=session.getAttribute("id").toString();
		int num = (pageNum == null) ? 1 : pageNum;
		System.out.println("id="+id);
		System.out.println("num="+num);
		rList = pDao.basketFrmRSelect(num,id);
		mav.addObject("rList", rList);
		mav.addObject("paging", getPaging(num,kind));// 현재 페이지 번호 ${paging}
		Gson gsonObj = new Gson();
		String jsonStr = gsonObj.toJson(rList);
		mav.addObject("jsonStr", jsonStr);
		view = "basketFrmrev";
		mav.setViewName(view);
		return mav;


	}



	/*
	 * private String gettPaging(int pageNum, String kind) { String
	 * id=session.getAttribute("id").toString();
	 * System.out.println("dddddddddd="+id); int maxNum = pDao.getrevCount(id); //
	 * 전체 글의 개수 int listCount = 5; // 페이지당 글의 수 int pageCount = 2;// 그룹당 페이지 수
	 * String boardName = "ajax/lbrev"; // 개시판이 여러개 일때
	 * System.out.println("dddddddddd:"+boardName);
	 * com.designus.www.userClass.Paging paging = new
	 * com.designus.www.userClass.Paging(maxNum, pageNum, listCount, pageCount,
	 * boardName,kind); return paging.makeHtmlPaging(); }
	 */

	public ModelAndView basketFrmspon(Integer pageNum, String kind) {
		
		mav = new ModelAndView();
		String view = null;
		List<Basket> sList = null;
		String id=session.getAttribute("id").toString();
		int num = (pageNum == null) ? 1 : pageNum;
		System.out.println("id="+id);
		System.out.println("num="+num);
		sList = pDao.basketFrmSSelect(num,id);
		mav.addObject("sList", sList);
		mav.addObject("paging", getPaging(num,kind));// 현재 페이지 번호 ${paging}
		Gson gsonObj = new Gson();
		String jsonStr = gsonObj.toJson(sList);
		mav.addObject("jsonStr", jsonStr);
		view = "basketFrmspon";
		mav.setViewName(view);
		return mav;
	}

	/*
	 * private Object getsponPaging(int pageNum, String kind) { String
	 * id=session.getAttribute("id").toString();
	 * System.out.println("dddddddddd="+id); int maxNum = pDao.getsponCount(id); //
	 * 전체 글의 개수 int listCount = 5; // 페이지당 글의 수 int pageCount = 2;// 그룹당 페이지 수
	 * String boardName = "basketFrm"; // 개시판이 여러개 일때
	 * com.designus.www.userClass.Paging paging = new
	 * com.designus.www.userClass.Paging(maxNum, pageNum, listCount, pageCount,
	 * boardName,kind); return paging.makeHtmlPaging(); }
	 */

	public ModelAndView basketFrm(Integer pageNum, String kind) {
		mav = new ModelAndView();
		String view = null;
		List<Basket> bList = null;
		String id=session.getAttribute("id").toString();
		int num = (pageNum == null) ? 1 : pageNum;
		System.out.println("id="+id);
		System.out.println("num="+num);
		bList = pDao.basketFrmSelect(num,id);
		mav.addObject("bList", bList);
		mav.addObject("paging", getPaging(num,kind));// 현재 페이지 번호 ${paging}
		Gson gsonObj = new Gson();
		String jsonStr = gsonObj.toJson(bList);
		mav.addObject("jsonStr", jsonStr);
		view = "basketFrm";
		mav.setViewName(view);
		return mav;
	}

	private Object getPaging(int pageNum,String kind) {
		String a = null;
		String id=session.getAttribute("id").toString();
		System.out.println("dddddddd="+id);
		int maxNum = pDao.getBoardCount(id); // 전체 글의 개수
		int listCount = 5; // 페이지당 글의 수
		int pageCount = 2;// 그룹당 페이지 수
		if(kind.equals("A")) {
		    a="basketFrm";
		}else if(kind.equals("R")) {
			a="basketFrmrev";
		}else {
			a="basketFrmspon";
		}
			String boardName = a;// 개시판이 여러개 일때
		
		com.designus.www.userClass.Paging paging = 
				 new com.designus.www.userClass.Paging(maxNum, pageNum, listCount, pageCount, boardName,kind);
		return paging.makeHtmlPaging();
	}

	public ModelAndView auctionMyOrderList(Integer pageNum, String kind) {
		mav = new ModelAndView();
		String id=session.getAttribute("id").toString();
		List<AuctionProgress> apList = null;
		List<AuctionProgress> apsList = null;
		/*
		 * List<AuctionProgress> apsListsetp2 = null; List<AuctionProgress> apsListsetp3
		 * = null; List<AuctionProgress> apsListsetp4 = null;
		 */
	     String result="";
		String view=null;
        System.out.println("kind"+kind);
		
		int num = (pageNum == null) ? 1 : pageNum;
		
		System.out.println("여기까지 오나????....");
		//AuctionProgress ap=new AuctionProgress();
		apList=pDao.auctionMyOrderListSelect(id);
		System.out.println("사망띠....");
		System.out.println("apList"+apList.size());
		
		System.out.println("여기까지가 끝인가보오....");
		for(int i=0;i<apList.size();i++) {
			
			System.out.println("그치만...."+apList.get(i).getAup_step());
			if(apList.get(i).getAup_step()==1) {
				kind="S1";
				//System.out.println("1111");
				apsList=pDao.auctionMyOrderListSelectstep(id,1,num);
				System.out.println("step1size : "+apsList.size());
				System.out.println("step1price : "+apsList.get(0).getAup_price());
				mav.addObject("step1", apsList);
				mav.addObject("paging", getMPaging(num,kind));
				
			}else if(apList.get(i).getAup_step()==2){
				//System.out.println("2222");
				kind="S2";
				apsList=pDao.auctionMyOrderListSelectstep2(id,2,num);
				
				mav.addObject("step2", apsList);
				mav.addObject("paging", getMPaging(num,kind));
			}else if(apList.get(i).getAup_step()==3) {
				kind="S3";
				apsList=pDao.auctionMyOrderListSelectstep3(id,3,num);
				//System.out.println("33333");
				mav.addObject("step3", apsList);
				mav.addObject("paging", getMPaging(num,kind));
				
			}else {
				kind="S4";
				apsList=pDao.auctionMyOrderListSelectstep4(id,4,num);
				//System.out.println("44444");
				mav.addObject("step4", apsList);
				mav.addObject("paging", getMPaging(num,kind));
			}
			
		}
		
		
		
		view="auctionMyOrderList";
		
		mav.setViewName(view);
		System.out.println("여기 진짜 와야 돼... 안그럼 나 프로젝트 접어.....");
		return mav;
	}

	private Object getMPaging(int pageNum, String kind) {
		int a = 0;
		String id=session.getAttribute("id").toString();
		System.out.println("dddddddd="+id);
		 // 전체 글의 개수
		int listCount = 5; // 페이지당 글의 수
		int pageCount = 2;// 그룹당 페이지 수
		String boardName = "auctionMyOrderList";
		if(kind.equals("S1")) {
			int setp=1;
		    a=pDao.getSetpCount(id,setp);
		}else if(kind.equals("S2")) {
			int setp=2;
			a=pDao.getSetpCount2(id,setp);
		}else if(kind.equals("S3")){
			int setp=3;
			a=pDao.getSetpCount3(id,setp);
		}else {
			int setp=4;
			a=pDao.getSetpCount4(id,setp);
		}
		int maxNum =a;
		
		com.designus.www.userClass.Paging paging = 
				 new com.designus.www.userClass.Paging(maxNum, pageNum, listCount, pageCount, boardName,kind);
		return paging.makeHtmlPaging();
	}

}

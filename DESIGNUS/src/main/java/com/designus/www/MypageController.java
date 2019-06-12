package com.designus.www;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.bean.AuctionProgress;
import com.designus.www.bean.Board;
import com.designus.www.bean.Member;
import com.designus.www.service.MemberMM;
import com.designus.www.service.MypageMM;

@Controller
public class MypageController {
	@Autowired
	private MypageMM pm;
	@Autowired
	HttpSession session;
	ModelAndView mav;

	@RequestMapping(value = "/historylist", method = RequestMethod.GET)
	public ModelAndView historylist(String list) {
		mav = pm.historylist(list);
		System.out.println("view=" + mav.getViewName());
		return mav;
	}

	@RequestMapping(value = "/privacyedit", method = RequestMethod.GET)
	public ModelAndView privacyedit() {

		mav = pm.privacyedit();

		return mav;
	}

	@RequestMapping(value = "/memberout", method = RequestMethod.GET)
	public ModelAndView memberout() {

		mav = pm.memberout();

		return mav;
	}

	@RequestMapping(value = "/nortowri", method = RequestMethod.GET)
	public ModelAndView nortowri() {

		mav = pm.nortowri();

		return mav;
	}

	@RequestMapping(value = "/memberrevise", method = RequestMethod.POST)
	public ModelAndView memberrevise(MultipartHttpServletRequest multi, String kind) {
		mav = new ModelAndView();
		System.out.println("id=" + multi.getParameter("mb_pw"));
		System.out.println("address=" + multi.getParameter("mb_address"));
		mav = pm.memberrevise(multi, kind);
		mav.setViewName("memberEdit");
		return mav;
	}

	@RequestMapping(value = "/withdrawalconfirm", method = RequestMethod.POST)
	public ModelAndView withdrawalconfirm(Member mb) {
		mav = new ModelAndView();
		mav = pm.withdrawalconfirm(mb);
		return mav;
	}

	@RequestMapping(value = "/nortowriapply", method = RequestMethod.POST)

	public ModelAndView nortowriapply(MultipartHttpServletRequest multi) {
		System.out.println("r_bnum" + multi.getParameter("mj_cg_code"));
		System.out.println("r_contents" + multi.getParameter("mj_contents"));
		mav = new ModelAndView();
		mav = pm.nortowriapply(multi);
		return mav;
	}

	@RequestMapping(value = "/basketFrm", method = RequestMethod.GET)

	public ModelAndView basketFrm(Integer pageNum ,String kind) {
		System.out.println("여기로 와야 하는데..111122..");
		System.out.println("카인드 뭐야??"+kind);
		mav = new ModelAndView();
		 mav=pm.basketFrm(pageNum,kind);
		return mav;
	}
	@RequestMapping(value = "/basketFrmrev", method = RequestMethod.GET)

	public ModelAndView lbrev(Integer pageNum ,String kind) {
		System.out.println("여기로 와야 하는데...2222.");
		System.out.println("카인드 뭐야??"+kind);
		mav = new ModelAndView();
		 mav=pm.basketFrmrev(pageNum,kind);
		return mav;
	}
	@RequestMapping(value = "/basketFrmspon", method = RequestMethod.GET)

	public ModelAndView basketFrmspon(Integer pageNum ,String kind) {
		System.out.println("여기로 와야 하는데....1111");
		System.out.println("카인드 뭐야??"+kind);
		mav = new ModelAndView();
		 mav=pm.basketFrmspon(pageNum,kind);
		return mav;
	}
	@RequestMapping(value = "/auctionMyOrderList", method = {RequestMethod.GET,RequestMethod.POST})

	public ModelAndView auctionMyOrderList(Integer pageNum ,String kind) {
		//System.out.println("일단 여기로 와야 하는디....");
		mav = new ModelAndView();
		
		 mav=pm.auctionMyOrderList(pageNum,kind);
		 //System.out.println("아니...인간적으로 여기 와야 되는거 아님?? 기계새끼라 그런가...???");
		return mav;
	}
	@RequestMapping(value = "/aucapply", method = {RequestMethod.GET,RequestMethod.POST})

	public ModelAndView aucapply(AuctionProgress ap) {
		System.out.println("일단 여기로 와야 하는디....1123123");
		mav = new ModelAndView();
		 mav=pm.aucapply(ap);
		 System.out.println("아니...인간적으로 여기 와야 되는거 아님??123123123???");
		return mav;
	}
	@RequestMapping(value = "/reviewBoardWrite", method = {RequestMethod.GET,RequestMethod.POST})

	public ModelAndView reviewBoardWrite(MultipartHttpServletRequest multi) {
		mav = new ModelAndView();
	    System.out.println("[컨트롤러].reviewBoardWrite:시작");
		 mav=pm.reviewBoardyhWrite(multi);
		 System.out.println("[컨트롤러].reviewBoardWrite:마무리!!");
		return mav;
	}
	@RequestMapping(value = "/auccancel", method = { RequestMethod.GET, RequestMethod.POST })

	public ModelAndView auccancel(AuctionProgress ap) {
		mav=new ModelAndView();
		System.out.println("(컨트롤러)출품구매 취소 시작");
		System.out.println("이게 작가 아이디인데....=" + ap);
		mav=pm.auccancel(ap);
		System.out.println("(컨트롤러)출품구매 취소 마무의리");
		return mav;

	}
	@RequestMapping(value = "/auctionMyAcceptList", method = {RequestMethod.GET,RequestMethod.POST})

	public ModelAndView auctionMyAcceptList(Integer pageNum ,String kind) {
		System.out.println("아니 여긴 오는거 맞아??");
		mav = new ModelAndView();
		mav=pm.auctionMyAcceptList(pageNum,kind);
		return mav;
	}

	/*
	 * @RequestMapping(value = "/auctionMyAcceptList", method =
	 * {RequestMethod.GET,RequestMethod.POST})
	 * 
	 * public ModelAndView auctionMyAcceptList(Integer pageNum ,String kind) { mav =
	 * new ModelAndView();
	 * System.out.println("여기로 오는 거 맞지??? 여기가 어디냐면 옥션 마이엑...어쩌구");
	 * //mav=pm.auctionMyAcceptList(pageNum,kind);
	 * System.out.println("aup_ptnum이 인트라고 오류가 나는데 여기까지는 실행이 된다? 말이 안되는데...." );
	 * return mav; }
	 */
	@RequestMapping(value = "/delinumupload", method = {RequestMethod.GET,RequestMethod.POST})

	public ModelAndView delinumupload(AuctionProgress ap) {
		System.out.println("아니 여긴 오는거 맞아??");
		mav = new ModelAndView();
		 mav=pm.delinumupload(ap);
		 
		return mav;
	}
}
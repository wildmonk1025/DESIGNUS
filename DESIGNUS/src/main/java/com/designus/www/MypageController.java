package com.designus.www;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.bean.AloneQuestion;
import com.designus.www.bean.AuctionProgress;
import com.designus.www.bean.AuctionTender;
import com.designus.www.bean.Board;
import com.designus.www.bean.Member;
import com.designus.www.bean.Notify;
import com.designus.www.bean.SponsorProgress;
import com.designus.www.bean.revAuctionProgress;
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

	public ModelAndView basketFrm(Integer pageNum, String kind) {
		System.out.println("여기로 와야 하는데..111122..");
		System.out.println("카인드 뭐야??" + kind);
		mav = new ModelAndView();
		mav = pm.basketFrm(pageNum, kind);
		return mav;
	}

	@RequestMapping(value = "/basketFrmrev", method = RequestMethod.GET)

	public ModelAndView lbrev(Integer pageNum, String kind) {
		System.out.println("여기로 와야 하는데...2222.");
		System.out.println("카인드 뭐야??" + kind);
		mav = new ModelAndView();
		mav = pm.basketFrmrev(pageNum, kind);
		return mav;
	}

	@RequestMapping(value = "/basketFrmspon", method = RequestMethod.GET)

	public ModelAndView basketFrmspon(Integer pageNum, String kind) {
		System.out.println("여기로 와야 하는데....1111");
		System.out.println("카인드 뭐야??" + kind);
		mav = new ModelAndView();
		mav = pm.basketFrmspon(pageNum, kind);
		return mav;
	}

	@RequestMapping(value = "/auctionMyOrderList", method = { RequestMethod.GET, RequestMethod.POST })

	public ModelAndView auctionMyOrderList(Integer pageNum, String kind) {
		System.out.println("(컨트롤러)출품 구매 내역 리스트 시작!!");
		mav = new ModelAndView();
		mav = pm.auctionMyOrderList(pageNum, kind);
		System.out.println("(컨트롤러)출품 구매 내역 리스트 마무리!!");
		return mav;
	}

	@RequestMapping(value = "/aucapply", method = { RequestMethod.GET, RequestMethod.POST })

	public ModelAndView aucapply(AuctionProgress ap) {
		System.out.println("(컨트롤러) 배송정보 입력 하기 시작!!!");
		mav = new ModelAndView();
		mav = pm.aucapply(ap);
		System.out.println("(컨트롤러) 배송정보 입력 하기 마무리!!!");
		return mav;
	}

	@RequestMapping(value = "/reviewBoardWrite", method = { RequestMethod.GET, RequestMethod.POST })

	public ModelAndView reviewBoardWrite(MultipartHttpServletRequest multi) {
		mav = new ModelAndView();
		System.out.println("[컨트롤러].reviewBoardWrite:시작");
		mav = pm.reviewBoardyhWrite(multi);
		System.out.println("[컨트롤러].reviewBoardWrite:마무리!!");
		return mav;
	}

	@RequestMapping(value = "/auccancel", method = { RequestMethod.GET, RequestMethod.POST })

	public ModelAndView auccancel(AuctionProgress ap, Notify ni) {
		mav = new ModelAndView();
		System.out.println("(컨트롤러)출품구매 취소 시작");
		System.out.println("이게 작가 아이디인데....=" + ap);
		mav = pm.auccancel(ap, ni);
		System.out.println("(컨트롤러)출품구매 취소 마무의리");
		return mav;

	}

	@RequestMapping(value = "/auctionMyAcceptList", method = { RequestMethod.GET, RequestMethod.POST })

	public ModelAndView auctionMyAcceptList(Integer pageNum, String kind) {
		System.out.println("아니 여긴 오는거 맞아??");
		mav = new ModelAndView();
		mav = pm.auctionMyAcceptList(pageNum, kind);
		return mav;
	}

	@RequestMapping(value = "/delinumupload", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView delinumupload(AuctionProgress ap) {
		System.out.println("아니 여긴 오는거 맞아??");
		mav = new ModelAndView();
		mav = pm.delinumupload(ap);

		return mav;
	}

	@RequestMapping(value = "/revAuctionMyOrderList", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView revAuctionMyOrderList(Integer pageNum, String kind) {
		System.out.println("(컨트롤러)제작의뢰  시작");
		mav = new ModelAndView();
		mav = pm.revAuctionMyOrderList(pageNum, kind);
		System.out.println("(컨트롤러)제작의뢰  마무리");
		return mav;
	}

	@RequestMapping(value = "/requestby", method = { RequestMethod.GET, RequestMethod.POST })

	public ModelAndView requestby(revAuctionProgress rap) {
		System.out.println("(컨트롤러)제작의뢰 스텝1 요청 시작");
		mav = new ModelAndView();
		mav = pm.requestby(rap);
		System.out.println("(컨트롤러)제작의뢰 스텝1 요청 마무리");
		return mav;
	}

	@RequestMapping(value = "/revaucinfocancel", method = { RequestMethod.GET, RequestMethod.POST })

	public ModelAndView revaucinfocancel(revAuctionProgress rap, Notify ni) {
		System.out.println("(컨트롤러)제작의뢰 스텝1 취소 시작");
		mav = new ModelAndView();
		System.out.println("(컨트롤러)제작의뢰 스텝1 취소 중간테스트 1 ranum:" + rap.getRap_ranum());
		System.out.println("(컨트롤러)제작의뢰 스텝1 취소 중간테스트 2 mbidw:" + rap.getRap_mbid_w());
		System.out.println("(컨트롤러)제작의뢰 스텝1 취소 중간테스트 3 contents:" + ni.getNf_contents());

		mav = pm.revaucinfocancel(rap, ni);
		System.out.println("(컨트롤러)제작의뢰 스텝1 취소 마무리");
		return mav;
	}

	@RequestMapping(value = "/revAuctionMyAcceptList", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView revAuctionMyAcceptList(Integer pageNum, String kind) {
		System.out.println("(컨트롤러)제작의뢰 접수내역  시작");
		mav = new ModelAndView();
		mav = pm.revAuctionMyAcceptList(pageNum, kind);
		System.out.println("(컨트롤러)제작의뢰 접수내역   마무리");
		return mav;
	}

	@RequestMapping(value = "/revdelinumupload", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView revdelinumupload(revAuctionProgress rap) {
		System.out.println("(컨트롤러)제작의뢰 스텝3 배송보내기 시작");
		mav = new ModelAndView();
		mav = pm.revdelinumupload(rap);
		System.out.println("(컨트롤러)제작의뢰 스텝1 배송보내기 마무리");
		return mav;
	}

	@RequestMapping(value = "/boardapply", method = { RequestMethod.GET, RequestMethod.POST })

	public ModelAndView boardapply(MultipartHttpServletRequest multi) {
		mav = new ModelAndView();
		System.out.println("[컨트롤러].이용후기 게시판 작성:시작");
		mav = pm.boardapply(multi);
		System.out.println("[컨트롤러].이용후기 게시판 작성:마무리!!");
		return mav;
	}

	@RequestMapping(value = "/fullDelete", method = { RequestMethod.GET, RequestMethod.POST })

	public ModelAndView fullDelete() {
		mav = new ModelAndView();
		System.out.println("[컨트롤러].이용후기 게시판 작성:시작");
		mav = pm.fullDelete();
		System.out.println("[컨트롤러].이용후기 게시판 작성:마무리!!");
		return mav;
	}

	@RequestMapping(value = "/nodelete", method = { RequestMethod.GET, RequestMethod.POST })

	public ModelAndView nodelete(Notify nf) {
		mav = new ModelAndView();
		System.out.println("[컨트롤러].이용후기 게시판 작성:시작");
		mav = pm.nodelete(nf);
		System.out.println("[컨트롤러].이용후기 게시판 작성:마무리!!");
		return mav;
	}

	@RequestMapping(value = "/AuctionGiveUp", method = { RequestMethod.GET, RequestMethod.POST })

	public ModelAndView AuctionGiveUp(AuctionTender at, String kind) {
		mav = new ModelAndView();
		System.out.println("[컨트롤러].이용후기 게시판 작성:시작");
		mav = pm.AuctionGiveUp(at, kind);
		System.out.println("[컨트롤러].이용후기 게시판 작성:마무리!!");
		return mav;
	}

	@RequestMapping(value = "/questionlist", method = { RequestMethod.GET, RequestMethod.POST })

	public ModelAndView questionlist(Integer pageNum, String kind) {
		mav = new ModelAndView();
		System.out.println("[컨트롤러].1:1 문의 리스트:시작");
		mav = pm.questionlist(pageNum, kind);
		System.out.println("[컨트롤러].1:1 문의 리스트:마무리!!");
		return mav;
	}

	@RequestMapping(value = "/questionread", method = { RequestMethod.GET, RequestMethod.POST })

	public ModelAndView questionread(AloneQuestion aq) {
		mav = new ModelAndView();
		System.out.println("[컨트롤러].1:1 문의  상세보기:시작");
		mav = pm.questionread(aq);
		System.out.println("[컨트롤러].1:1 문의 상세보기:마무리!!");
		return mav;
	}

	@RequestMapping(value = "/download", method = RequestMethod.GET)
	public void download(@RequestParam Map<String, Object> params, HttpServletRequest req, HttpServletResponse responce

	) throws Exception {
		System.out.println("of" + params.get("aqi_img"));
		System.out.println("sf" + params.get("aqi_img"));
		params.put("root", req.getSession().getServletContext().getRealPath("/"));
		params.put("responce", responce);
		pm.download(params);

		// return mav;
	}

	@RequestMapping(value = "/fundingAcceptList", method = { RequestMethod.GET, RequestMethod.POST })

	public ModelAndView fundingAcceptList(Integer pageNum, String kind) {
		mav = new ModelAndView();
		System.out.println("[컨트롤러].후원 진행 내역:시작");
		mav = pm.fundingAcceptList(pageNum, kind);
		System.out.println("[컨트롤러].후원 진행 내역:마무리!!");
		return mav;
	}

	@RequestMapping(value = "/fundingOrderList", method = { RequestMethod.GET, RequestMethod.POST })

	public ModelAndView fundingOrderList(Integer pageNum, String kind) {
		mav = new ModelAndView();
		System.out.println("[컨트롤러].1:1 문의 리스트:시작");
		mav = pm.fundingOrderList(pageNum, kind);
		System.out.println("[컨트롤러].1:1 문의 리스트:마무리!!");
		return mav;
	}

	@RequestMapping(value = "/funddeliupload", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView funddeliupload(SponsorProgress sp) {
		mav = new ModelAndView();
		System.out.println("[컨트롤러] 후원 배송정보 입력:시작");
		System.out.println("[컨트롤러] 후원 배송정보 입력:중간값 확인1 =" + sp.getSsp_name());
		System.out.println("[컨트롤러] 후원 배송정보 입력:중간값 확인2 =" + sp.getSsp_ptnum());
		mav = pm.funddeliupload(sp);
		System.out.println("[컨트롤러] 후원 배송정보 입력 :마무리!!");
		return mav;
	}

	@RequestMapping(value = "/funddelinumupload", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView funddelinumupload(SponsorProgress sp) {
		mav = new ModelAndView();
		System.out.println("[컨트롤러] 후원 배송정보 입력작가:시작");
		System.out.println("[컨트롤러] 후원 배송정보 입력작가:중간값 확인1 =" + sp.getSsp_ptnum());
		mav = pm.funddelinumupload(sp);
		System.out.println("[컨트롤러] 후원 배송정보 입력작가 :마무리!!");
		return mav;
	}
	@RequestMapping(value = "/WriteAReview", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView WriteAReview(MultipartHttpServletRequest multi ) {
		mav = new ModelAndView();
		System.out.println("[컨트롤러] 후원 배송정보 입력작가:시작");
		mav = pm.WriteAReview(multi);
		System.out.println("[컨트롤러] 후원 배송정보 입력작가 :마무리!!");
		return mav;
	}
	@RequestMapping(value = "/stepfive", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView stepfive(revAuctionProgress rap ) {
		mav = new ModelAndView();
		System.out.println("[컨트롤러] 비공개 제작의뢰:시작");
		System.out.println("[컨트롤러] 비공개 제작의뢰:중간확인 ="+rap.getRap_ptnum());
		
		mav = pm.stepfive(rap);
		System.out.println("[컨트롤러] 비공개 제작의뢰 :마무리!!");
		return mav;
	}
	@RequestMapping(value = "/stepfiveDele", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView stepfiveDele(revAuctionProgress rap ) {
		mav = new ModelAndView();
		System.out.println("[컨트롤러] 비공개 제작의뢰 삭제:시작");
		System.out.println("[컨트롤러] 비공개 제작의뢰 삭제:중간확인 ="+rap.getRap_ptnum());
		
		mav = pm.stepfiveDele(rap);
		System.out.println("[컨트롤러] 비공개 제작의뢰 삭제:마무리!!");
		return mav;
	}
}
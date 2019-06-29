package com.designus.www;

import java.io.PrintWriter; 
import java.text.DateFormat;
import java.text.ParseException;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.ws.Service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.designus.www.bean.Member;
import com.designus.www.dao.IauctionDao;
import com.designus.www.dao.ImemberDao;
import com.designus.www.service.CommonMM;
import com.designus.www.service.MemberMM;
import com.designus.www.service.MypageMM;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired
	private MemberMM mm;
	@Autowired
	private CommonMM cm;
	@Autowired
	private MypageMM pm;
	@Autowired
	private ImemberDao mDao;
	@Autowired
	private IauctionDao aDao;
	@Autowired
	HttpSession session;
	ModelAndView mav;
	@Autowired
    private JavaMailSender mailSender;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);
		return "redirect:/home";
	}

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView home() throws ParseException {
		mav = cm.homeSetting();
		return mav;
	}

	@RequestMapping(value = "/logingo", method = RequestMethod.GET)
	public String logingo() {

		return "loginBox";
	}

	@RequestMapping(value = "/servicecenter", method = RequestMethod.GET)
	public String servicecenter() {

		return "sc_Question";
	}


	@RequestMapping(value = "/norJoinFrm", method = RequestMethod.GET)
	public String norJoinFrm() {

		return "norjoinFrm";
	}

	@RequestMapping(value = "/wriJoinFrm", method = RequestMethod.GET)
	public String wriJoinFrm() {

		return "wrijoinFrm";
	}

	@RequestMapping(value = "/memberfind", method = RequestMethod.GET)
	public String memberfind() {

		return "memberFind";
	}

	@RequestMapping(value = "/revauctionwrite", method = RequestMethod.GET)
	public String revauctionwrite() {

		return "revauctionwrite";
	}

	@RequestMapping(value = "/auctionwrite", method = RequestMethod.GET)
	public String auctionwrite() {

		return "auctionwrite";
	}

	@RequestMapping(value = "/joinfrm", method = RequestMethod.GET)
	public String joinfrm() {

		return "joinFrm";
	}

	@RequestMapping(value = "/memberapply", method = RequestMethod.POST)
	public ModelAndView memberapply(MultipartHttpServletRequest multi, String kind) {
		System.out.println("여기까지는 온것 같고..." + multi.getFileNames());
		mav = new ModelAndView();

		mav = mm.memberapply(multi, kind);
		return mav;
	}

	@RequestMapping(value = "/wriapply", method = RequestMethod.POST)
	public ModelAndView wriapply(MultipartHttpServletRequest multi, String kind) {
		System.out.println("작가회원가입" + multi.getFileNames());

		mav = mm.wriapply(multi, kind);
		return mav;
	}

	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public ModelAndView mypage(String zz) {
      mav=new ModelAndView();
      mav=pm.mypagemove();
      if(zz != null) {
			mav.addObject("zz", "aaa");
			}
		return mav;
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login(Member mb) {
		mav = mm.login(mb);

		return mav;
	}

	@RequestMapping(value = "/logout", method = RequestMethod.POST)
	public ModelAndView logout() {
		mav = new ModelAndView();
		session.invalidate();
		mav.addObject("logout", 1);
		mav.setViewName("redirect:/home");
		return mav;
	}

	@ResponseBody
	@RequestMapping(value = "/memberlapcheck", method = RequestMethod.POST)
	public Map<Object, Object> memberlapcheck(@RequestBody String mbid) {
		int count = 0;
		System.out.println("돌아가고는 있나");
		System.out.println("아이디?=" + mbid);
		Map<Object, Object> map = new HashMap<Object, Object>();

		count = mDao.memberlapcheck(mbid);
		map.put("cnt", count);

		return map;
	}

	/*
	 * @RequestMapping(value = "/bestajax") public ModelAndView bestajax() { mav =
	 * new ModelAndView(); mav = cm.bestajax();
	 * 
	 * return mav; }
	 */

	/*
	 * @RequestMapping(value="/joinPost",method=RequestMethod.GET) public String
	 * joinPost(@ModelAttribute("uVO") UserVO uVO) throws Exception) { //이메일 발송 관련
	 * url return "loginBox"; }
	 */
	@RequestMapping(value = "/memberidfind",method = RequestMethod.POST)
	public ModelAndView memberidfind(Member mb) {
		mav = new ModelAndView();
				
		mav = mm.memberidfind(mb);
		return mav;	
	} 
	@RequestMapping(value = "/memberpwfind",method = RequestMethod.POST)
	public ModelAndView memberpwfind(Member mb) {
		mav = new ModelAndView();
		
		mav = mm.memberpwfind(mb);
		return mav;	
	} 
	@RequestMapping(value = "/memberFind", method = RequestMethod.GET)
	public String memberFind() {
		
		return "memberFind";
	}
	@RequestMapping(value = "/memberpwFind", method = RequestMethod.GET)
	public String memberpwFind() {
		
		return "memberpwFind";
	}
	@RequestMapping(value = "/memberpwupdate",method = RequestMethod.POST)
	public ModelAndView memberpwupdate(Member mb) {
		mav = new ModelAndView();
		System.out.println("너되기는하냐?");
		mav = mm.memberpwupdate(mb);
		return mav;	
	} 
	@ResponseBody
    @RequestMapping(value = "/sendrndnum")
   public String sendRndNum(String mb_email) {
		System.out.println("메일 보내기");
		String setfrom = "wsl548360@gmail.com"; // 보내는 아이디
		String title = "Designus 인증번호"; // 제목
		//String mb_email = (String) session.getAttribute("m_id"); // 세션 가져오자 받는사람아이디

		String certification = mm.getRamdomPassword(10);// 내용 인증번호 디비에 저장

		System.out.println(mb_email);

		try {

			MimeMessage message = mailSender.createMimeMessage();

			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
			messageHelper.setFrom(setfrom); // 보내는사람 생략하거나 하면 정상작동을 안함
			messageHelper.setTo(mb_email); // 받는사람 이메일
			messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
			messageHelper.setText("인증번호 : " + certification); // 메일 내용,인증번호

			mailSender.send(message);
		} catch (Exception e) {
			System.out.println(e);
		}
		return certification;
	}
	
	@RequestMapping(value = "/searching",method = RequestMethod.POST)
	public ModelAndView searching(String word) throws ParseException {
		System.out.println(word);
		mav = cm.searching(word);
		return mav;
	}
	@RequestMapping(value = "/loginmove",method = RequestMethod.GET)
	public ModelAndView loginmove() {
		mav=new ModelAndView();
		mav.addObject("mmssgg", "lee");
		mav.setViewName("loginBox");
		return mav;
	}
}

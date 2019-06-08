package com.designus.www;

import java.util.Map; 
import java.util.Random;
import java.util.logging.Logger;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.designus.www.bean.Member;
import com.designus.www.email.Email;
import com.designus.www.email.EmailSender;
import com.designus.www.service.MemberMM;
import com.designus.www.service.ServiceMM;
@Repository 
@Controller
public class MailController {
	/*
	 * @Autowired private EmailSender emailSender;
	 * 
	 * @Autowired private Email email;
	 * 
	 * @RequestMapping("/sendpw.do") public ModelAndView sendEmailAction
	 * (@RequestParam Map<String, Object> paramMap, ModelMap model) throws Exception
	 * { ModelAndView mav; String id=(String) paramMap.get("id"); String
	 * e_mail=(String) paramMap.get("email"); String pw=mainService.getPw(paramMap);
	 * System.out.println(pw); if(pw!=null) { email.setContent("비밀번호는 "+pw+" 입니다.");
	 * email.setReceiver(e_mail); email.setSubject(id+"님 비밀번호 찾기 메일입니다.");
	 * emailSender.SendEmail(email); mav= new ModelAndView("redirect:/login.do");
	 * return mav; }else { mav=new ModelAndView("redirect:/logout.do"); return mav;
	 * } }
	 */



}

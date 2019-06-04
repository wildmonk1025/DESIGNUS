package com.designus.www;

import java.util.logging.Logger;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.designus.www.bean.Member;
import com.designus.www.service.MemberMM;
import com.designus.www.service.ServiceMM;

@Controller
public class MailController {
	@RequestMapping(value = "emailConfirm", method = RequestMethod.GET)
	public String emailConfirm(String key, Model model) {
		try {
			emailService.emailConfirm(emailConfirmVO);
			model.addAttribute("check", true);
		} catch (Exception e) {
			model.addAttribute("check", false);
		}
		return "emailConfirm";
	}

}

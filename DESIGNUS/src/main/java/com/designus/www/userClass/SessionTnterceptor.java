package com.designus.www.userClass;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class SessionTnterceptor extends HandlerInterceptorAdapter {
   @Autowired
   HttpSession session;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		System.out.println("인터셉터 PreHandler");
		if(request.getSession().getAttribute("id")==null) {
			response.sendRedirect("./");
			return false; // 비로그인시
		}
		return true; //로그인
	}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		System.out.println("인터셉터 PostHandler");
		super.postHandle(request, response, handler, modelAndView);
	}

}

package com.ezen.spring.controller;


import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.config.authentication.UserServiceBeanDefinitionParser;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ezen.spring.domain.UserVO;
import com.ezen.spring.service.UserService;
import com.mysql.cj.log.Log;

@Controller
public class HomeController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Inject
	private UserService userService;
	
	@GetMapping("/")
	public String home() {
		return "home";
	}
	
	@GetMapping("/main")
	public String main() {
		return "/layout/main";
	}
	
	@GetMapping("/join")
	public ModelAndView joinGet(ModelAndView mv) {
		mv.setViewName("/user/join");
		return mv;
	}
	
	@PostMapping("/join")
	public ModelAndView joinPost(ModelAndView mv, UserVO user) {
		logger.info(user.toString());
		boolean isUp = userService.join(user);
		if(isUp) {
			mv.setViewName("/user/login");
		}else {
			mv.setViewName("/user/join");
			mv.addObject("msg", "0");
		}
		return mv;
	}
	
	@GetMapping("/login")
	public String login() {
		return "/user/login";
	}
	
	@PostMapping("/login")
	public ModelAndView loginPost(ModelAndView mv, String id, String pw, HttpServletRequest request) {
		logger.info(">>> 아이디 비번 잘 받아왔는지 확인:"+ id +","+ pw);
		UserVO isUser = userService.isUser(id, pw);
		
		if(isUser != null) {
			HttpSession session = request.getSession();
			session.setAttribute("ses", isUser);
			
			mv.setViewName("/layout/main");
			mv.addObject("msg", "1");
		}else {
			mv.setViewName("/user/login");
			mv.addObject("msg", "0");
		}
		return mv;
	}
	
	@GetMapping("/logout")
	public ModelAndView logoutGet(ModelAndView mv, HttpServletRequest request) {
		mv.addObject("msg", "0");
		request.getSession().removeAttribute("ses");
		request.getSession().invalidate();
		mv.setViewName("/layout/main");
		return mv;
	}
	
	@GetMapping("/myinfo")
	public String myinfo() {
		return "/user/myinfo";
	}
}

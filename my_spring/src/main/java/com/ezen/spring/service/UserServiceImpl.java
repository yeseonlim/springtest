package com.ezen.spring.service;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.ezen.spring.dao.UserDAO;
import com.ezen.spring.domain.UserVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class UserServiceImpl implements UserService {
	
	@Inject
	private UserDAO userDao;
	@Inject
	BCryptPasswordEncoder passwordEncoder;
	
	@Override
	public boolean join(UserVO user) {
		log.info(">>> join service chk");
		UserVO tmpUser = userDao.getUser(user.getId());
		
		if(tmpUser != null) {
			return false;
		}
		if(user.getId()==null || user.getId().length()==0) {
			return false;
		}
		
		String pw = user.getPw();
		String encodePw = passwordEncoder.encode(pw);
		user.setPw(encodePw);
		
		userDao.insertUser(user);
		return true;
	}

	@Override
	public UserVO isUser(String id, String pw) {
		log.info(">>> login service chk");
		UserVO user = userDao.getUser(id);
		if(user==null) {return null;}
		
		//matches
		if(passwordEncoder.matches(pw, user.getPw())) {
			return user;
		}else {
			return null;
		}
	}

	@Override
	public UserVO getUser(HttpServletRequest request) {
		log.info(">>> getUser service chk");
		UserVO user = (UserVO)request.getSession().getAttribute("ses");
		return user;
	}
}

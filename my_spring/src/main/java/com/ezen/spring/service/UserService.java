package com.ezen.spring.service;

import javax.servlet.http.HttpServletRequest;

import com.ezen.spring.domain.UserVO;

public interface UserService {

	boolean join(UserVO user);

	UserVO isUser(String id, String pw);

	UserVO getUser(HttpServletRequest request);

}

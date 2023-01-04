package com.ezen.spring.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.ezen.spring.dao.CommentDAO;
import com.ezen.spring.domain.CommentVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class CommentServiceImpl implements CommentService {
	@Inject
	private CommentDAO commentDao;

	@Override
	public int register(CommentVO cvo) {
		log.info("comment register sevice chk");
		return commentDao.insertComment(cvo);
	}

	@Override
	public List<CommentVO> getList(int bno) {
		log.info("comment list sevice chk");
		return commentDao.selectList(bno);
	}

	@Override
	public int modify(CommentVO cvo) {
		log.info("comment modify sevice chk");
		return commentDao.updateComment(cvo);
	}

	@Override
	public int remove(int cno) {
		log.info("comment remove sevice chk");
		return commentDao.deleteComment(cno);
	}
}

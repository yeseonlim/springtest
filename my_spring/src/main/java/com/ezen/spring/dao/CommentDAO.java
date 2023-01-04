package com.ezen.spring.dao;

import java.util.List;

import com.ezen.spring.domain.CommentVO;

public interface CommentDAO {

	int insertComment(CommentVO cvo);

	List<CommentVO> selectList(int bno);

	int updateComment(CommentVO cvo);

	int deleteComment(int cno);
	
}

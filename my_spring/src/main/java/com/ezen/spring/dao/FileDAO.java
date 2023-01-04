package com.ezen.spring.dao;

import java.util.List;

import com.ezen.spring.domain.FileVO;

public interface FileDAO {
	int insertFile(FileVO fvo);

	List<FileVO> selectFileList(int bno);

	int deleteFile(String uuid);

}

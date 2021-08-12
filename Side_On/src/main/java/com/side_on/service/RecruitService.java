package com.side_on.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.side_on.dao.RecruitDao;
import com.side_on.dto.RecruitBoard;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class RecruitService {

	@Autowired
	private  RecruitDao dao;

	public int insertRecruitBoard(RecruitBoard recruitBoard) {
		
		int result = dao.insertRecruitBoard(recruitBoard);
		return result;
	}
}

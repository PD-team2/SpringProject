package com.side_on.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.side_on.dao.RecruitDao;
import com.side_on.dto.Criteria;
import com.side_on.dto.Criteria_ex;
import com.side_on.dto.RecruitBoard;
import com.side_on.dto.RecruitCriteria;
import com.side_on.dto.RecruitPaging;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class RecruitService {

	@Autowired
	private  RecruitDao dao;

	/** 모집 게시글 등록*/
	public int insertRecruitBoard(RecruitBoard recruitBoard) {
		int result = dao.insertRecruitBoard(recruitBoard);
		return result;
	}

	public int boardListCnt() {
		return dao.boardListCnt();

	}

	public List<Map<String, Object>> boardList(Criteria_ex cri) {
		return dao.boardList(cri);

	}
	
	/**게시글 목록 조회*/

	
	/**게시글 총 조회*/
	

}

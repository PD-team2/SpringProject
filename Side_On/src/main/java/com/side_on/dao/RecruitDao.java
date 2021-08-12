package com.side_on.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.side_on.dto.Criteria_ex;
import com.side_on.dto.RecruitBoard;
import com.side_on.dto.RecruitCriteria;

@Mapper
public interface RecruitDao {

	//게시글 등록
	public int insertRecruitBoard(RecruitBoard recruitBoard);

	//게시글 목록 조회 
	public List<RecruitBoard> list(Criteria_ex cri);

	//게시글 총 갯수
	public int boardListCnt();

	public List<Map<String, Object>> boardList(Criteria_ex cri);
	
	

}

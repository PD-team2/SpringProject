package com.side_on.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.side_on.dto.CriteriaRc;
import com.side_on.dto.RecruitBoard;
import com.side_on.dto.RecruitCriteria;

@Mapper
public interface RecruitDao {

	//게시글 등록
	public int insertRecruitBoard(RecruitBoard recruitBoard);

	public int allCount(CriteriaRc cri);

	public List<RecruitBoard> getListPaging(CriteriaRc cri);

	//게시글 총 갯수



	

}

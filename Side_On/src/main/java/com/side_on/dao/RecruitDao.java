package com.side_on.dao;

import org.apache.ibatis.annotations.Mapper;
import com.side_on.dto.RecruitBoard;

@Mapper
public interface RecruitDao {

	//게시글 등록
	public int insertRecruitBoard(RecruitBoard recruitBoard);

}

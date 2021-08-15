package com.side_on.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.side_on.dto.Rest;

@Mapper
public interface RestDao {

	/** 관리자 dashboard 신고 상위 미처리 3 개 노출 */
	public List<Rest> selectDashboardRestList();

	/** rest List */
	public List<Rest> selectRestList();
	
	/** 신고 접수 처리 */
	public void updateRestManageModal(String restNo, String restResult);

	/** 경고 횟수 증가용 사용자 아이디 조회 */
	public String selectRestUser(String restNo);
	
	/** 숨김 게시글 재게시용 글번호 조회 */
	public String selectRestPostNo(String restNo);

	/** 신고 접수 */
	public void insertRest(String noticeNo, String memberId, String reason);

}

package com.side_on.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.side_on.dao.RecruitDao;
import com.side_on.dto.Apply;
import com.side_on.dto.Criteria;
import com.side_on.dto.CriteriaRc;
import com.side_on.dto.QnABoard;
import com.side_on.dto.RecruitBoard;
import com.side_on.dto.RecruitCriteria;
import com.side_on.dto.RecruitMyPage;
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

	/** 모집 게시글 총 갯수 조회*/
	public int allCount(Criteria cri) {
		return dao.allCount(cri) ;
	}

	/** 모집 게시글 데이터 전체 조회 */
	public List<RecruitBoard>  getListPaging(Criteria cri) {
		return dao.getListPaging(cri);
	}

	public ArrayList<RecruitBoard> memberAll() {
		return dao.memberAll();
	}

	public RecruitBoard memberDetail(int recruit_num) {
		return dao.memberDetail(recruit_num);
	}

	public int recruitApply(Apply apply) {
		return dao.recruitApply(apply);
	}

	public int getApply_Num(int recruit_num, String memberId) {
		return dao.getApply_Num( recruit_num,  memberId) ;
	}

	public void plusCount(int recruit_num, int apply_num, int count, String part) {
		dao.plusCount( recruit_num,  apply_num,  count,  part);
	}

	public int selectFront(int recruit_num, String front) {
		return dao.selectFront(recruit_num, front);
	}

	public int selectBack(int recruit_num, String back) {
		return dao.selectBack(recruit_num, back);
	}

	public int selectAos(int recruit_num, String aos) {
		return dao.selectAos(recruit_num, aos);
	}

	public int selectIos(int recruit_num, String ios) {
		return dao.selectIos(recruit_num, ios);
	}

	public int selectServer(int recruit_num, String server) {
		return dao.selectServer(recruit_num, server);
	}

	public int selectUxui(int recruit_num, String uxui) {
		return dao.selectUxui(recruit_num, uxui);
	}

	public int selectPlan(int recruit_num, String plan) {
		return dao.selectPlan(recruit_num, plan);
	}

	public int selectPm(int recruit_num, String pm) {
		return dao.selectPm(recruit_num, pm);
	}

	public List<HashMap<String,String>> mypageApply(String memberId) {
			return dao.mypageApply(memberId);
	}

	public ArrayList<RecruitMyPage> myApplyAll(String memberId) {
		return dao.myApplyAll(memberId);
	}

	public ArrayList<RecruitBoard> myRecruit(String memberId) {
		return dao.myRecruit(memberId);
	}

	public ArrayList<Apply> myApply(String memberId) {
		return dao.myApply(memberId);
	}

	public int recruitCancel(int recruit_num, String memberId, String join_yn) {
		return dao.recruitCancel(recruit_num, memberId, join_yn);
	}



	



	
	/**게시글 목록 조회*/

	
	/**게시글 총 조회*/
	

}

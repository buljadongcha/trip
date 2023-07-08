package kr.co.trip.mvc.dao;

import java.util.List;
import java.util.Map;

import kr.co.trip.mvc.vo.FreeBoardVO;
import kr.co.trip.mvc.vo.FreeBoard_CommVO;



public interface FreeBoardDaoInter {

	public void addFBoard(FreeBoardVO vo);
	public List<FreeBoardVO> listFBoard(Map<String, String> map); //게시판 리스트
	
	public void updateHit(int num); //hit 조회수 증가 
	public FreeBoardVO detailFBoard(int num); //상세보기 메서드
	
	public boolean checkPwd(FreeBoardVO vo); //비번, 넘버 받아야하지만 1개이상이면 vo 객체로 해버려도된다.
	public void deleteFBoard(int num); //게시판 삭제 
	public void updateFBoard(FreeBoardVO vo); //게시판 수정
	public int getTotal(Map<String, String> map);

	//댓글 파트 
	public void addBoardComm(FreeBoard_CommVO vo);
	public List<FreeBoard_CommVO> listCommBoard(int num); //int num은 부모테이블(작성글 의 번호를 의미) 
}

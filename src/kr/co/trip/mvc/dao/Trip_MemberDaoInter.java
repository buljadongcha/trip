package kr.co.trip.mvc.dao;

import java.util.List;
import java.util.Map;

import kr.co.trip.mvc.vo.Trip_MemberVO;

public interface Trip_MemberDaoInter {
	
	public void add(Trip_MemberVO v);
	public int idCheck(String id);
	public int emailCheck(String id);
	public int nickCheck(String id);
	public Trip_MemberVO loginCheck(Trip_MemberVO v);
	public Trip_MemberVO myPage(String id);
	public List<Trip_MemberVO> memList(Map<String, String> map);
	public int getCnt();
	public int getTotal(Map<String, String> map);
	// ·Î±×ÀÎ ·Î±ë
	//public void addLoginLoggin(MyLoginLoggerVO vo);

}

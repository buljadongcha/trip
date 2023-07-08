package kr.co.trip.mvc.dao;

import java.util.List;
import java.util.Map;

import kr.co.trip.mvc.vo.FreeBoardVO;
import kr.co.trip.mvc.vo.FreeBoard_CommVO;



public interface FreeBoardDaoInter {

	public void addFBoard(FreeBoardVO vo);
	public List<FreeBoardVO> listFBoard(Map<String, String> map); //�Խ��� ����Ʈ
	
	public void updateHit(int num); //hit ��ȸ�� ���� 
	public FreeBoardVO detailFBoard(int num); //�󼼺��� �޼���
	
	public boolean checkPwd(FreeBoardVO vo); //���, �ѹ� �޾ƾ������� 1���̻��̸� vo ��ü�� �ع������ȴ�.
	public void deleteFBoard(int num); //�Խ��� ���� 
	public void updateFBoard(FreeBoardVO vo); //�Խ��� ����
	public int getTotal(Map<String, String> map);

	//��� ��Ʈ 
	public void addBoardComm(FreeBoard_CommVO vo);
	public List<FreeBoard_CommVO> listCommBoard(int num); //int num�� �θ����̺�(�ۼ��� �� ��ȣ�� �ǹ�) 
}

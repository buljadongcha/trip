package kr.co.trip.mvc.dao;


import kr.co.trip.mvc.vo.Trip_Diary_CommVO;
import kr.co.trip.mvc.vo.Trip_Diary_HotelVO;
import kr.co.trip.mvc.vo.Trip_Diary_PlanVO;
import kr.co.trip.mvc.vo.Trip_Diary_TranVO;

import java.util.List;

import kr.co.trip.mvc.vo.Dia_CommVO;
import kr.co.trip.mvc.vo.Dia_PlanVO;
import kr.co.trip.mvc.vo.Dia_RecordVO;
import kr.co.trip.mvc.vo.Plan_PayVO;
import kr.co.trip.mvc.vo.Plan_ScheduleVO;
import kr.co.trip.mvc.vo.Rec_MemoVO;
import kr.co.trip.mvc.vo.Rec_PayVO;
import kr.co.trip.mvc.vo.Rec_PhotoVO;
import kr.co.trip.mvc.vo.Rec_ScheduleVO;
import kr.co.trip.mvc.vo.Trip_DiaryVO;

public interface Trip_DiaryDaoInter {
	
	/*
	 * private List<Dia_CommVO> diacommlist;
	private List<Dia_PlanVO> diaplanlist;
	private List<Dia_RecordVO> diarecordlist;
	private List<Plan_PayVO> planpaylist;
	private List<Plan_ScheduleVO> planschedulelist;
	private List<Rec_MemoVO> recmemo;
	private List<Rec_PayVO> recpay;
	private List<Rec_PhotoVO> recphoto;
	private List<Rec_ScheduleVO> recschedule;
	 */
	
	public void tdadd(Trip_DiaryVO v);
	//public void tdtranadd(List<Trip_Diary_TranVO> v);
	//public void tdplanadd(List<Trip_Diary_PlanVO> v);
	//public void tdhoteladd(List<Trip_Diary_HotelVO> v);
	
	public void dplanadd(List<Dia_PlanVO> v);
	public void drecordadd(List<Dia_RecordVO> v);
	public void recscadd(List<Rec_ScheduleVO> v);
	public void recmemoadd(List<Rec_MemoVO> v);
	public void recphotoadd(List<Rec_PhotoVO> v);
	public void recpayadd(List<Rec_PayVO> v);
	
	public void tdcommadd(Trip_Diary_CommVO v);
	public Trip_DiaryVO diaryDetail(int num);
	
	
}

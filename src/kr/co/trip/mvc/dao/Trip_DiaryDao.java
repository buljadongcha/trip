package kr.co.trip.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import kr.co.trip.mvc.vo.Trip_Diary_CommVO;
import kr.co.trip.mvc.vo.Dia_PlanVO;
import kr.co.trip.mvc.vo.Dia_RecordVO;
import kr.co.trip.mvc.vo.Rec_MemoVO;
import kr.co.trip.mvc.vo.Rec_PayVO;
import kr.co.trip.mvc.vo.Rec_PhotoVO;
import kr.co.trip.mvc.vo.Rec_ScheduleVO;
import kr.co.trip.mvc.vo.Trip_DiaryVO;

@Repository
public class Trip_DiaryDao implements Trip_DiaryDaoInter {

	@Autowired
	public SqlSessionTemplate ss;

	@Override
	public void tdadd(Trip_DiaryVO v) {
		ss.insert("tripdiary.diaryadd", v);
	}

//	@Override
//	public void tdplanadd(List<Trip_Diary_PlanVO> v) {
//		ss.insert("tripdiary.pladd", v);		
//	}

//	@Override
//	public void tdhoteladd(List<Trip_Diary_HotelVO> v) {
//		ss.insert("tripdiary.htadd", v);		
//	}

	@Override
	public void tdcommadd(Trip_Diary_CommVO v) {
		ss.insert("tripdiary.coadd", v);
	}

//	@Override
//	public void tdtranadd(List<Trip_Diary_TranVO> v) {
//		ss.insert("tripdiary.tradd", v);		
//	}

	@Override
	public Trip_DiaryVO diaryDetail(int num) {
		Trip_DiaryVO vo = ss.selectOne("tripdiary.diaryDetail", num);
		// List<Trip_Diary_TranVO> list = vo.getTranList();
		return vo;
	}

	@Override
	public void dplanadd(List<Dia_PlanVO> v) {
		// TODO Auto-generated method stub

	}

	@Override
	public void drecordadd(List<Dia_RecordVO> v) {
		ss.insert("tripdiary.recadd", v);
	}

	@Override
	public void recscadd(List<Rec_ScheduleVO> v) {
		ss.insert("tripdiary.recScheduleAdd",v);		
	}

	@Override
	public void recmemoadd(List<Rec_MemoVO> v) {
		ss.insert("tripdiary.recMemoadd", v);
	}

	@Override
	public void recphotoadd(List<Rec_PhotoVO> v) {
		ss.insert("tripdiary.recPhotoadd", v);
		
	}

	@Override
	public void recpayadd(List<Rec_PayVO> v) {
		ss.insert("tripdiary.recPayadd",v);
		
	}

	

}

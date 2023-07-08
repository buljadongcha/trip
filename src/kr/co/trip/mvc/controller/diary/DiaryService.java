package kr.co.trip.mvc.controller.diary;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.co.trip.mvc.dao.Trip_DiaryDao;
import kr.co.trip.mvc.vo.Dia_PlanVO;
import kr.co.trip.mvc.vo.Dia_RecordVO;
import kr.co.trip.mvc.vo.Rec_MemoVO;
import kr.co.trip.mvc.vo.Rec_PayVO;
import kr.co.trip.mvc.vo.Rec_PhotoVO;
import kr.co.trip.mvc.vo.Rec_ScheduleVO;
import kr.co.trip.mvc.vo.Trip_DiaryVO;
import kr.co.trip.mvc.vo.Trip_Diary_HotelVO;
import kr.co.trip.mvc.vo.Trip_Diary_PlanVO;
import kr.co.trip.mvc.vo.Trip_Diary_TranVO;

@Service
public class DiaryService {
	@Autowired
	private Trip_DiaryDao tripDao;
	
	@Transactional
	public void addDiary(Trip_DiaryVO vo, List<Dia_RecordVO> drlist, List<Rec_ScheduleVO> recsc
			,List<Rec_MemoVO> recmemo,List<Rec_PhotoVO> recphoto,List<Rec_PayVO> recpay) {
		tripDao.tdadd(vo);
		tripDao.drecordadd(drlist);
		tripDao.recscadd(recsc);
		tripDao.recmemoadd(recmemo);
		tripDao.recphotoadd(recphoto);
		tripDao.recpayadd(recpay);
		//tripDao.tdtranadd(tdtranlist);
		//tripDao.tdhoteladd(tdhotellist);
		//tripDao.tdplanadd(tdplanlist);
	}
	
	
	/*@Transactional
	public void addDiary_Hotel(Trip_DiaryVO vo) {
		tripDao.tdadd(vo); 
		tripDao.tdhoteladd(list);
	}
	
	@Transactional
	public void addDiary_Plan(Trip_DiaryVO vo) {
		tripDao.tdadd(vo); 
		tripDao.tdplanadd(list);
	}*/
}

package kr.co.trip.mvc.dao;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import kr.co.trip.mvc.vo.Trip_Diary_CommVO;
import kr.co.trip.mvc.vo.Trip_Diary_HotelVO;
import kr.co.trip.mvc.vo.Trip_Diary_PlanVO;
import kr.co.trip.mvc.vo.Trip_Diary_TranVO;
import kr.co.trip.mvc.vo.Trip_DiaryVO;

@Repository
public class Trip_DiaryCommDao implements Trip_DiaryCommDaoInter{
	
	@Autowired
	public SqlSessionTemplate ss;

	@Override
	public void add(Trip_Diary_CommVO v) {
		ss.insert("tripdiary.add", v);
		
	}


}

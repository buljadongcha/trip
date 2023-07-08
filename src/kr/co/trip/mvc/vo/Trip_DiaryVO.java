package kr.co.trip.mvc.vo;

import java.util.List;

public class Trip_DiaryVO {
	/*
	 * dia_num       number,
  dia_nick      varchar2(30) NOT NULL,
  dia_sub       varchar2(200) NOT NULL,
  dia_summ      varchar2(100),
  dia_start     date NOT NULL,
  dia_end       date NOT NULL,
  dia_thumbnail 
	 */
	private int dia_num;
	private String dia_nick;
	private String dia_sub;
	private String dia_summ;
	private String dia_start;
	private String dia_end;
	private String dia_thumbnail;
	
	//private List<Trip_Diary_TranVO> tranList;
	//private List<Trip_Diary_HotelVO> hotelList;
	//private List<Trip_Diary_PlanVO> planlist;
	
	private List<Dia_PlanVO> diaplanlist;
	private List<Dia_RecordVO> diarecordlist;
	//private List<Plan_PayVO> planpaylist;
	//private List<Plan_ScheduleVO> planschedulelist;
	//private List<Rec_MemoVO> recmemo;
	//private List<Rec_PayVO> recpay;
	//private List<Rec_PhotoVO> recphoto;
	//private List<Rec_ScheduleVO> recschedule;
	
	public int getDia_num() {
		return dia_num;
	}
	public void setDia_num(int dia_num) {
		this.dia_num = dia_num;
	}
	public String getDia_nick() {
		return dia_nick;
	}
	public void setDia_nick(String dia_nick) {
		this.dia_nick = dia_nick;
	}
	public String getDia_sub() {
		return dia_sub;
	}
	public void setDia_sub(String dia_sub) {
		this.dia_sub = dia_sub;
	}
	public String getDia_summ() {
		return dia_summ;
	}
	public void setDia_summ(String dia_summ) {
		this.dia_summ = dia_summ;
	}
	public String getDia_start() {
		return dia_start;
	}
	public void setDia_start(String dia_start) {
		this.dia_start = dia_start;
	}
	public String getDia_end() {
		return dia_end;
	}
	public void setDia_end(String dia_end) {
		this.dia_end = dia_end;
	}
	public String getDia_thumbnail() {
		return dia_thumbnail;
	}
	public void setDia_thumbnail(String dia_thumbnail) {
		this.dia_thumbnail = dia_thumbnail;
	}
	public List<Dia_PlanVO> getDiaplanlist() {
		return diaplanlist;
	}
	public void setDiaplanlist(List<Dia_PlanVO> diaplanlist) {
		this.diaplanlist = diaplanlist;
	}
	public List<Dia_RecordVO> getDiarecordlist() {
		return diarecordlist;
	}
	public void setDiarecordlist(List<Dia_RecordVO> diarecordlist) {
		this.diarecordlist = diarecordlist;
	}
	
	
	

}
